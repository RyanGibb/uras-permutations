cd $(dirname "$0")/..

executable=$1

out_file=$(dirname "$0")/benchmarks.csv

if [ ! -f $out_file ]; then
    echo "Executable, n, CPU Time (ns), Repetitions" > $out_file
fi

for file in ./permutations/*; do
	echo "$file"
	echo -n $(basename "$executable"),$(basename "$file" _pair.txt), >> $out_file
	cpu_time_ns=0
	repetitions=1
	while [ $cpu_time_ns -le 1000000000 ]; do # 1 second
		cpu_time_ns=$(cat "$file" | (./"$executable" $repetitions 2>> $(dirname "$0")/error_log) | head -n 1)
		repetitions=$(( $repetitions * 2 ))
		echo "At $repetitions repetitions took $cpu_time_ns (ns)"
	done
	echo $cpu_time_ns, $repetitions >> $out_file
done
