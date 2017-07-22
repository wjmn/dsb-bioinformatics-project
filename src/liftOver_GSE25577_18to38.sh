# LIFTOVER FOR hg18 BED FILES -----------------------------------------------------------------------------
cd ../data/temp/GSE25577_concatenated

# PAY ATTENTION TO THE LINE DIRECTLY BELOW: 18 VS 19 VS 38
dir_chain=../../raw/liftOverchains/hg18ToHg38.over.chain
dir_save=../markers_hg38/

for filename in *.bed;
do
    liftOver $filename $dir_chain $dir_save${filename/.bed/_liftedto38.bed} $dir_save${filename/.bed/_liftedto38.err}
done
