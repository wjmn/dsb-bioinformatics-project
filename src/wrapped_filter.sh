function wrapped_filter {
    # Args:
    # $1 -- file to be filtered
    # $2 -- file containing filter regions
    # $3 -- destination file for output

    bedtools subtract -a $1 -b $2 > $3

}
