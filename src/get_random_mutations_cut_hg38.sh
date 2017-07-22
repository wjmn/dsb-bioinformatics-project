mutations_dir_hg38=../data/temp/filtered/mutations_hg38/
cd $mutations_dir_hg38

destination=../mutations_random_hg38/
random_mutations=../../mutations_random/random_hg38_filtered.bed

for file in ./*
do
    num_lines=`wc -l $file | cut -f1 -d' '`;
    cat $random_mutations \
    | awk -v num_lines="$num_lines" 'NR <= num_lines {print}' \
    | sed s/" "/"\t"/g \
    > $destination${file/.bed/RANDOMISED.bed}
done
