awk '{if (NR%4==0){print $0} else {printf"%s ",$0}}' filename.txt
cat filename.txt
