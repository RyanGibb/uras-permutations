# Spawns a number of processes equal to the number of cores minus 1 to saturate
# the memory bandwidth before runnung the process to benchmark.

out_file=$(dirname "$0")/benchmarks.csv
REPETITIONS=5
TARGET_TIME_NS=10000000 # 10 milliseconds
PERMUTATION_FILES=$(ls -v /cs/scratch/rtg2/permutations/*.perm)
CORES=4
TMP_DIR=/tmp/uras-permutation

mkdir -p $TMP_DIR

if [ ! -f $out_file ]; then
    echo "Timestamp, Repetition, n, Executable, Iterations, CPU Time (ns), Host" > $out_file
fi

execute_process () {
	echo $(cat "$file" | ./$executable $iterations | head -n 1)
}

make -C $(dirname "$0")/../c || exit 1
cargo build --release --manifest-path $(dirname "$0")/../rust/Cargo.toml || exit 1

num_procs=$(($CORES-1))
for ((rep=1; rep<=REPETITIONS; rep++)); do
	for file in $PERMUTATION_FILES; do
		for executable in "$@"; do
			cpu_time_ns=0
			new_iterations=1
			while [ $cpu_time_ns -le $TARGET_TIME_NS ]; do
				iterations=$new_iterations
				timestamp=$(date)
				for ((i=0; i<num_procs; i++)); do
					echo $(execute_process)>$TMP_DIR/$i &
					pids[${i}]=$!
				done
				cpu_time_ns=$(execute_process)
				if [ "$cpu_time_ns" = "" ]; then
					echo "An error occured!"
					cpu_time_ns="Error"
					break
				fi
				for ((i=0; i<num_procs; i++)); do
					wait ${pids[$i]}
					cpu_time_ns_background=$(<$TMP_DIR/$i)
					rm $TMP_DIR/$i
					if [ "$x_background" = "" ]; then
						echo "An error occured in a saturation process i=$i!"
					fi
				done
				new_iterations=$(($iterations * 2))
			done
			echo $timestamp, $rep, $(basename "$file" .perm), $(basename "$executable" .sh), $iterations, $cpu_time_ns, $HOSTNAME >> $out_file
		done
	done
done
