cargo build --release --manifest-path $(dirname "$0")/../rust/Cargo.toml || exit 1

dir_path=$1
max_log2n=$2

for ((i=0; i<=$max_log2n; i+=1))
do
	n=$((2 ** i))
    $(dirname "$0")/../rust/target/release/generate_permutations $n > "$dir_path/2^$i.perm"
done
