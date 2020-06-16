
out_file=$(dirname "$0")/benchmarks.csv
REPETITIONS=3

if [ ! -f $out_file ]; then
    echo "Executable, n, Repetition, CPU Time (ns), Iterations" > $out_file
fi

get_cpu_time () {
	echo $(cat "$file" | ./$executable $iterations | head -n 1)
}

make -C $(dirname "$0")/../c || exit 1
cargo build --release --manifest-path $(dirname "$0")/../rust/Cargo.toml || exit 1

for executable in "$@"; do
	echo $executable
	for file in $(dirname "$0")/../permutations/*; do
		echo "$file"
		cpu_time_ns=0
		new_iterations=1
		while [ $cpu_time_ns -le 1000000000 ]; do # 1 second
			iterations=$new_iterations
			cpu_time_ns=$(get_cpu_time)
			echo "At $iterations iterations took $cpu_time_ns (ns)"
			new_iterations=$(($iterations * 2))
		done
		echo $(basename "$executable" .sh),$(basename "$file" _pair.txt), 1, $cpu_time_ns, $iterations >> $out_file
		for ((repetition=2; repetition<=$REPETITIONS; repetition++)); do
			echo $(basename "$executable" .sh),$(basename "$file" _pair.txt), $repetition, $(get_cpu_time), $iterations >> $out_file
		done
	done
done
