cd ../data/temp/filtered/

for file in ./*/*
do
    sort -k1,1 -k2,2n $file > ${file/.bed/_SORTED.bed}
done
