genome_file=../data/raw/genomes/human.hg19.genome
filterlist=../data/temp/filterlist/hg19_filterlist_concatsorted.bed
destination=../data/temp/mutations_random/random_hg19.bed
destination_filtered=../data/temp/mutations_random/random_hg19_filtered.bed
bedtools random -l 0 -n 1000000 -seed 1 -g $genome_file > $destination
bedtools subtract -a $destination -b $filterlist > $destination_filtered

genome_file=../data/raw/genomes/human.hg38.genome
filterlist=../data/temp/filterlist/hg38_filterlist_concatsorted.bed
destination=../data/temp/mutations_random/random_hg38.bed
destination_filtered=../data/temp/mutations_random/random_hg38_filtered.bed
bedtools random -l 0 -n 1000000 -seed 1 -g $genome_file > $destination
bedtools subtract -a $destination -b $filterlist > $destination_filtered
