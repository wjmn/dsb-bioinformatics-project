cd ../data/temp/GSE25577_concatenated

# PAY ATTENTION TO THE LINE DIRECTLY BELOW: 18 VS 19 VS 38
dir_chain=../../raw/liftOverchains/hg18ToHg19.over.chain
dir_save=../markers_hg19/

for filename in *.bed;
do
    liftOver $filename $dir_chain $dir_save${filename/.bed/_liftedto19.bed} $dir_save${filename/.bed/_liftedto19.err}
done
