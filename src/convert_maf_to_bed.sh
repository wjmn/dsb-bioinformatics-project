cd ../data/raw/mutations/

mkdir ../../temp/mutations_hg38

for filename in *.maf;
do 
    cut -f 5-8 $filename \
    | grep -e '^chr' \
    | awk '$3 = $3 FS "." FS "."' \
    | awk '$2 = $2 - 1' \
    | awk '$3 = $3 - 1' \
    | sed s/" "/"\t"/g \
    > ../../temp/mutations_hg38/${filename%.maf}.bed
done
