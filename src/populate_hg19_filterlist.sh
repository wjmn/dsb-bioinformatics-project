cd ../data/raw/blacklists

destination=../../temp/filterlist/hg19_filterlist_concatsorted.bed
rmsk=hg19_rmsk.bed
blacklist=ENCFF001TDO.bed

cat $rmsk $blacklist | cut -f 1-3 | sort -k1,1 -k2,2n > $destination
