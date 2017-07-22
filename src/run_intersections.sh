. ./wrapped_intersect.sh

markers_hg19=../data/temp/filtered/markers_hg19/*
markers_hg38=../data/temp/filtered/markers_hg38/*
mutations_hg19=../data/temp/filtered/mutations_hg19/*
mutations_hg38=../data/temp/filtered/mutations_hg38/*

out_hg19=../data/processed/intersections_hg19
out_hg38=../data/processed/intersections_hg38

for file_marker in $markers_hg19
do
    for file_mutations in $mutations_hg19
    do
        wrapped_intersect $file_marker $file_mutations $out_hg19${file_marker##*/}_x_${file_mutations##*/}
    done
done

for file_marker in $markers_hg38
do
    for file_mutations in $mutations_hg38
    do
        wrapped_intersect $file_marker $file_mutations $out_hg38${file_marker##*/}_x_${file_mutations##*/}
    done
done
