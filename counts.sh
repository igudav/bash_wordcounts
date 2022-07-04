#! /bin/bash

filename=$1
output_folder=$2

word_counts=$(
    cat $filename \
    | tr -dC "[:alpha:] \n" \
    | awk '{for(x=1; $x; ++x) print $x}' \
    | tr "[:upper:]" "[:lower:]" \
    | sort \
    | uniq -c \
    | sort -gr
)
echo "$word_counts"

echo "$word_counts" \
    | head -n 10 \
    | awk '{ OFS="_"; print $2, $1; }' \
    | xargs -I{} touch "$output_folder/{}"
