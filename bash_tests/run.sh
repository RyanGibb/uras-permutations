cd $(dirname "$0")/..

for executable in "$@"; do
	echo $executable
	out_dir=$(dirname "$0")/$(basename "$executable")
	mkdir -p $out_dir
	for file in ./permutations/*; do
		echo "$file"
		cat "$file" | ./"$executable" | tail -n 1 > $out_dir/$(basename "$file" .txt).out
	done
done
