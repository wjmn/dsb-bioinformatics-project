cd ../data/raw/markers/GSE57426/

mkdir ../../../temp/GSE57426_wig2bed
destination=../../../temp/GSE57426_wig2bed/

for filename in *.wig;
do
    wig2bed < $filename > $destination${filename/.wig/.bed}
done
