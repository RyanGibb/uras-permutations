
out_file=$(dirname "$0")/benchmarks.csv
REPETITIONS=5
TARGET_TIME_NS=10000000 # 10 milliseconds
PERMUTATION_FILES=$(ls -v /cs/scratch/rtg2/permutations/*.perm)

if [ ! -f $out_file ]; then
    echo "Timestamp, Repetition, n, Executable, Iterations, CPU Time (ns), Host" > $out_file
fi

get_cpu_time () {
	echo $(cat "$file" | ./$executable $iterations | head -n 1)
}

make -C $(dirname "$0")/../c || exit 1
cargo build --release --manifest-path $(dirname "$0")/../rust/Cargo.toml || exit 1

for ((rep=1; rep<=REPETITIONS; rep++)); do
	for file in $PERMUTATION_FILES; do
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
			echo $timestamp, $rep, $(basename "$file" .perm), $(basename "$executable" .sh), $iterations, $cpu_time_ns, $HOSTNAME >> $out_file
		done
	done
done
