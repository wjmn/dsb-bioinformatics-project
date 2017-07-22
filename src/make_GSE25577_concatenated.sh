cd ../data/raw/markers/GSE25577

mkdir ../../../temp/GSE25577_concatenated
destination=../../../temp/GSE25577_concatenated/

for filename in *1.bed;
do
    file_no_dir=${filename##*/}
    file_new_name=${file_no_dir/_1.bed/.bed} 
    cp $filename $destination$file_new_name
    cat ${filename/1.bed/2.bed} >> $destination$file_new_name
done
