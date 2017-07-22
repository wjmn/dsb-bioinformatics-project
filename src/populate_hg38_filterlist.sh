cd ../data/raw/blacklists

destination=../../temp/filterlist/hg38_filterlist_concatsorted.bed
rmsk=hg38_rmsk.bed
blacklist=hg38.blacklist.bed

cat $rmsk $blacklist | cut -f 1-3 | sort -k1,1 -k2,2n > $destination
