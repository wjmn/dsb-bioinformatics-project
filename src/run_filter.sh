. ./wrapped_filter.sh

filter_hg19=../data/temp/filterlist/hg19_filterlist_concatsorted.bed
filter_hg38=../data/temp/filterlist/hg38_filterlist_concatsorted.bed

markers_hg19_dirs="../data/temp/markers_hg19/*.bed
../data/raw/markers/GSE55699/*.txt"
markers_hg38_dirs="../data/temp/markers_hg38/*.bed
../data/temp/markers_hg38/*.bed.peak.txt"
mutations_hg19_dirs="../data/external/subtyped_mutations/*.bed"
mutations_hg38_dirs="../data/temp/mutations_hg38/*.bed"

out_markers_hg19=../data/temp/filtered/markers_hg19/
out_markers_hg38=../data/temp/filtered/markers_hg38/
out_mutations_hg19=../data/temp/filtered/mutations_hg19/
out_mutations_hg38=../data/temp/filtered/mutations_hg38/

for file in $markers_hg19_dirs
do
    wrapped_filter $file $filter_hg19 $out_markers_hg19${file##*/}
done 

for file in $mutations_hg19_dirs
do
    wrapped_filter $file $filter_hg19 $out_mutations_hg19${file##*/}
done 

for file in $markers_hg38_dirs
do
    wrapped_filter $file $filter_hg38 $out_markers_hg38${file##*/}
done 

for file in $mutations_hg38_dirs
do
    wrapped_filter $file $filter_hg38 $out_mutations_hg38${file##*/}
done
