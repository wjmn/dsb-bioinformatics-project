cd ../data/raw/markers/GSE55699

# PAY ATTENTION TO THE LINE DIRECTLY BELOW: 18 VS 19 VS 38
dir_chain=../../liftOverchains/hg19ToHg38.over.chain
dir_save=../../../temp/markers_hg38/

for filename in *.txt;
do
    liftOver $filename $dir_chain $dir_save${filename/.bed/_liftedto38.bed} $dir_save${filename/.bed/_liftedto38.err}
done
