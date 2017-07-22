mutations_dir_hg19=../data/temp/filtered/mutations_hg19
cd $mutations_dir_hg19

destination=../mutations_random_hg19/
random_mutations=../../mutations_random/random_hg19_filtered.bed

for file in ./*
do
    num_lines=`wc -l $file | cut -f1 -d' '`;
    cat $random_mutations \
    | awk -v num_lines="$num_lines" 'NR <= num_lines {print}' \
    | sed s/" "/"\t"/g \
    > $destination${file/.bed/RANDOMISED.bed}
done
