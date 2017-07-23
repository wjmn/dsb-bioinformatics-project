output_hg19=../data/processed/output_logs/jaccard_hg19.txt
output_hg38=../data/processed/output_logs/jaccard_hg38.txt

markers_hg19=../data/temp/filtered/markers_hg19/*SORTED*
markers_hg38=../data/temp/filtered/markers_hg38/*SORTED*
mutations_hg19="../data/temp/filtered/mutations_hg19/*SORTED*
../data/temp/filtered/mutations_random_hg19/*SORTED*"
mutations_hg38="../data/temp/filtered/mutations_hg38/*mutect*SORTED*
../data/temp/filtered/mutations_random_hg38/*mutect*SORTED*"

echo -e "MARKER_FILE\tMUTATIONS_FILE\tINTERSECTION\tUNION\tJACCARD\tN_INTERSECTIONS" >> $output_hg19

for file_marker in $markers_hg19
do
    for file_mutations in $mutations_hg19
    do
        printf "%s\t" "${file_marker##*/}" >> $output_hg19;
        printf "%s\t" "${file_mutations##*/}" >> $output_hg19;
        bedtools jaccard -a $file_marker -b $file_mutations | tail -n1 >> $output_hg19;
    done
done


echo -e "MARKER_FILE\tMUTATIONS_FILE\tINTERSECTION\tUNION\tJACCARD\tN_INTERSECTIONS" >> $output_hg38

for file_marker in $markers_hg38
do
    for file_mutations in $mutations_hg38
    do
        printf "%s\t" "${file_marker##*/}" >> $output_hg38;
        printf "%s\t" "${file_mutations##*/}" >> $output_hg38;
        bedtools jaccard -a $file_marker -b $file_mutations | tail -n1 >> $output_hg38;
    done
done
