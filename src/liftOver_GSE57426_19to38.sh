cd ../data/temp/markers_hg19

# PAY ATTENTION TO THE LINE DIRECTLY BELOW: 18 VS 19 VS 38
dir_chain=../../raw/liftOverchains/hg19ToHg38.over.chain
dir_save=../markers_hg38/

for filename in GSM138*.bed;
do
    liftOver $filename $dir_chain $dir_save${filename/.bed/_liftedto38.bed} $dir_save${filename/.bed/_liftedto38.err}
done
