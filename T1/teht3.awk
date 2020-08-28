#!/bin/awk -f

BEGIN {
    FS = ":"
}

$2 && FILENAME == ARGV[1] {
    headers[header_count++] = $1
}

END {
    for (i=4;i<header_count;i++) printf ";" headers[i]  # First header is row number and is left empty
    print ""
    while( getline line < ARGV[2] )  print line  # Dump content file
}


# awk -f T1/teht3.awk T1/ad.names T1/data2.csv > data3.csv
