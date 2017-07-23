genome_file=../data/raw/genomes/human.hg19.genome
dirs_hg19="../data/temp/filtered/markers_hg19/*SORTED*
../data/temp/filtered/mutations_hg19/*SORTED*"
destination=../data/processed/output_logs/genomecov_hg19.txt

for file in $dirs_hg19
do
    echo ${file##*/} >> $destination;
    bedtools genomecov -i $file -g $genome_file -max 1 >> $destination;
    echo -e "\n\n" >> $destination
done
