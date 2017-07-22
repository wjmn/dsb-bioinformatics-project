function wrapped_intersect {
    # Args:
    # $1 -- marker file
    # $2 -- mutations file
    # $3 -- destination file for output

    # Note specification of window size below -w
    bedtools window -a $1 -b $2 -w 100 > $3

}
