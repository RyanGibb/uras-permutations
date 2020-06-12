cd $(dirname "$0")/..

executable=$1

out_file=$(dirname "$0")/benchmarks.csv

if [ ! -f $out_file ]; then
    echo "Executable, File, CPU Time (ns)" > $out_file
fi

for file in ./permutations/*; do
	echo "$file"
	echo -n $(basename "$executable"),$(basename "$file" .txt), >> $out_file
	cat "$file" | ./"$executable" | head -n 1 >> $out_file
done
