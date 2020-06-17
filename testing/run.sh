
make -C $(dirname "$0")/../c || exit 1
cargo build --release --manifest-path $(dirname "$0")/../rust/Cargo.toml || exit 1

for executable in "$@"; do
	echo $executable
	out_dir=$(dirname "$0")/$(basename "$executable" .sh)
	mkdir -p $out_dir
	for file in $(dirname "$0")/../permutations/*; do
		echo "$file"
		cat "$file" | ./"$executable" | tail -n 1 > $out_dir/$(basename "$file" .perm).out
	done
done
