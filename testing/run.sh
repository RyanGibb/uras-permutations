
make -C $(dirname "$0")/../c || exit 1
cargo build --release --manifest-path $(dirname "$0")/../rust/Cargo.toml || exit 1

for executable in "$@"; do
	echo $executable
	out_dir=$(dirname "$0")/$(basename "$executable" .sh)
	mkdir -p "$out_dir"
	for file in $(dirname "$0")/../permutations/*; do
		echo "$file"
		file_base=$(basename "$file" .perm)
		cat "$file" | ./"$executable" | tail -n +2 > "$out_dir/$file_base.out"
		# exit if executable fails
		return_code=${PIPESTATUS[1]}
		if [ $return_code -ne 0 ]; then
			echo "Executable failed!"
			exit $return_code
		fi
	done
done
