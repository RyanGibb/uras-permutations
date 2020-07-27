for ((i=14; i<=24; i+=1))
do
	n=$((2 ** i))
    h=$(echo $n | awk '
        function human(x) {
            if (x<1000) {return x} else {x/=1024}
            s="KMGTEPZY";
            while (x>=1000 && length(s)>1)
                {x/=1024; s=substr(s,2)}
            return int(x+0.5) substr(s,1,1)
        }
        {sub(/^[0-9]+/, human($1)); print}')
	script_path="$(dirname "$0")/../executable_scripts/composition rust cooperman_ma cache_size=2^""$i""B=""$h""B.sh"
    echo 'exec $(dirname "$0")/../rust/target/release/composition_rust cooperman_ma '"$n"' $1' > "$script_path"
    chmod +x "$script_path"
done
