output_hg19=../data/processed/output_logs/jaccard_hg19.txt
output_hg38=../data/processed/output_logs/jaccard_hg38.txt

markers_hg19=../data/temp/filtered/markers_hg19/*SORTED*
markers_hg38=../data/temp/filtered/markers_hg38/*SORTED*
mutations_hg19="../data/temp/filtered/mutations_hg19/*SORTED*
../data/temp/filtered/mutations_random_hg19/*SORTED*"
mutations_hg38="../data/temp/filtered/mutations_hg38/*SORTED*
../data/temp/filtered/mutations_random_hg38/*SORTED*"

for file_marker in $markers_hg19
do
    for file_mutations in $mutations_hg19
    do
        echo ${file_markers##./} >> $output_hg19;
        echo ${file_mutations##./} >> $output_hg19;
        bedtools jaccard -a $file_markers -b $file_mutations >> $output_hg19;
        echo -e "/n/n" >> $output_hg19
    done
done

for file_marker in $markers_hg38
do
    for file_mutations in $mutations_hg38
    do
        echo ${file_markers##./} >> $output_hg38;
        echo ${file_mutations##./} >> $output_hg38;
        bedtools jaccard -a $file_markers -b $file_mutations >> $output_hg38;
        echo -e "/n/n" >> $output_hg38
    done
done
