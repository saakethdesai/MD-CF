i=$1
awk -f "addlines.awk" $i.data > out
mv out $i.data
