sed "s/^ *//" $1 \
| grep '^\.mdc-' \
| awk -F' ' '{for (i = 0; ++i <= NF;) print $i}' \
| awk -F',' '{for (i = 0; ++i <= NF;) print $i}' \
| awk -F'+' '{for (i = 0; ++i <= NF;) print $i}' \
| awk -F'>' '{for (i = 0; ++i <= NF;) print $i}' \
| awk -F'.' '{for (i = 0; ++i <= NF;) print $i}' \
| grep '^mdc-' \
| sed -e 's/[:\[].*//' \
| sed -e 's/[~)]$//' \
| sort -u
