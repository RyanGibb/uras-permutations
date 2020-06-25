
out_file=$(dirname "$0")/benchmarks.csv
REPETITIONS=3
TARGET_TIME_NS=1000000000 # 1 second
PERMUTATION_FILES=$(ls -v /cs/scratch/rtg2/permutations/*.perm)

if [ ! -f $out_file ]; then
    echo "Timestamp, Executable, n, Repetition, CPU Time (ns), Iterations" > $out_file
fi

get_cpu_time () {
	echo $(cat "$file" | ./$executable $iterations | head -n 1)
}

make -C $(dirname "$0")/../c || exit 1
cargo build --release --manifest-path $(dirname "$0")/../rust/Cargo.toml || exit 1

for file in $PERMUTATION_FILES; do
	echo "$file"
	for executable in "$@"; do
		echo $(date) $file $executable
		cpu_time_ns=0
		new_iterations=1
		while [ $cpu_time_ns -le $TARGET_TIME_NS ]; do
			iterations=$new_iterations
			timestamp=$(date)
			cpu_time_ns=$(get_cpu_time)
			new_iterations=$(($iterations * 2))
		done
		echo $timestamp, $(basename "$executable" .sh), $(basename "$file" .perm), 1, $cpu_time_ns, $iterations >> $out_file
		for ((repetition=2; repetition<=$REPETITIONS; repetition++)); do
			echo $(date), $(basename "$executable" .sh), $(basename "$file" .perm), $repetition, $(get_cpu_time), $iterations >> $out_file
		done
	done
done
