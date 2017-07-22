cd ../data/raw/markers/GSE57426/

destination=../../../temp/markers_hg19/

# Do not sort used here since for some reason, will not complete if sorted (memory issues?)
# awk used here to prepend "chr" to the numbers in column 1
for filename in *.wig;
do
    wig2bed --do-not-sort < $filename | awk '$1 = "chr" $1'| sed s/" "/"\t"/g > $destination${filename/.wig/.bed}
done
