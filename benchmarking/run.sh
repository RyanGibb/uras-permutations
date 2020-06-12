cd $(dirname "$0")/..

out_file=$(dirname "$0")/benchmarks.csv
REPETITIONS=3

if [ ! -f $out_file ]; then
    echo "Executable, n, Repetition, CPU Time (ns), Iterations" > $out_file
fi

echo -n > $(dirname "$0")/error_log

get_cpu_time () {
	echo $(cat "$file" | (./"$executable" $iterations 2>> $(dirname "$0")/error_log) | head -n 1)
}

for executable in "$@"; do
	echo $executable
	for file in ./permutations/*; do
		echo "$file"
		cpu_time_ns=0
		new_iterations=1
		while [ $cpu_time_ns -le 1000000000 ]; do # 1 second
			iterations=$new_iterations
			cpu_time_ns=$(get_cpu_time)
			echo "At $iterations iterations took $cpu_time_ns (ns)"
			#new_iterations=$(bc <<< "$iterations * 2")
			new_iterations=$(($iterations * 2))
		done
		echo $(basename "$executable"),$(basename "$file" _pair.txt), 1, $cpu_time_ns, $iterations>> $out_file
		for ((repetition=2; repetition<=$REPETITIONS; repetition++)); do
			echo $(basename "$executable"),$(basename "$file" _pair.txt), $repetition, $(get_cpu_time), $iterations >> $out_file
		done
	done
done
