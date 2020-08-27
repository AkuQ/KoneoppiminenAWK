#!/bin/awk -f

BEGIN {
    FS = ",";
}

{
    row_counts[NF]++
}

END {
    for (count in row_counts) {
        print row_counts[count] " rows with " count " columns."
    }
}