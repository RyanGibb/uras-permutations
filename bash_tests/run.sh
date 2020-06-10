cd $(dirname "$0")/..

executable=$1

out_dir=./bash_tests/$(basename "$executable")

mkdir -p $out_dir

for file in ./permutations/*; do
	echo "$file"
	cat "$file" | ./"$executable" > $out_dir/$(basename "$file" .txt).out
done
