

assembly: composition_naive.s composition_cooperman_ma.s

composition_naive.s: ../src/composition_naive.rs
	rustc ../src/composition_naive.rs -C opt-level=3 --crate-type=rlib --emit asm="composition_naive.s"

composition_cooperman_ma.s: ../src/composition_cooperman_ma.rs
	rustc ../src/composition_cooperman_ma.rs -C opt-level=3 --crate-type=rlib --emit asm="composition_cooperman_ma.s"

clean:
	rm composition_naive.s composition_cooperman_ma.s
