genome_file=../data/temp/genomes_culled/human.hg38.genome
dirs_hg38="../data/temp/filtered/markers_hg38/*SORTED*
../data/temp/filtered/mutations_hg38/*SORTED*"
destination=../data/processed/output_logs/genomecov_hg38.txt

for file in $dirs_hg38
do
    echo ${file##*/} >> $destination;
    bedtools genomecov -i $file -g $genome_file >> $destination;
    echo -e "\n\n" >> $destination
done
