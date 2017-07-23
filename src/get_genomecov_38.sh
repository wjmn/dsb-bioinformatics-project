genome_file=../data/raw/genomes/human.hg38.genome
dirs_hg38="../data/temp/filtered/markers_hg38/*SORTED*
../data/temp/filtered/mutations_hg38/*SORTED*"
destination=../data/processed/output_logs/genomecov_hg38.txt

for file in $dirs_hg38
do
    echo ${file##*/} >> $destination;
    bedtools genomecov -i $file -g $genome_file -max 1 >> $destination;
    echo -e "\n\n" >> $destination
done
