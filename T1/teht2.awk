#!/bin/awk -f

BEGIN {
    FS = ",";
    aratio_idx = 3
    row_num = 0
}

$aratio_idx == 1.0 {
    printf ++row_num
    for (i=4;i<=NF;i++) printf ";" $i
    print ""
}


# awk -f T1/teht2.awk T1/ad.data > T1/data2.csv
