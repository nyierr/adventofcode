.aoc.2015.day11.generate:{[x]
	:(neg count x)#"a"^(" ",.Q.a) 27 vs 1+27 sv -96+"j"$x;
	};

.aoc.2015.day11.isValid:{[x]
	if[any "iol" in x;:0b];
	if[count[distinct x (-1 0)+/:where 0=deltas "j"$x]<2;:0b];
	:any all each 1=1_/:deltas each 3#'next\[5;"j"$x];
	};
	
.aoc.2015.day11.part1:{[x]
	:.aoc.2015.day11.generate/[{not .aoc.2015.day11.isValid x};x];
	};
	
.aoc.2015.day11.part2:.aoc.2015.day11.part1;

show "AOC 2015 D11/01: ",.Q.s1 res:.aoc.2015.day11.part1 first read0`$":input.txt";
show "AOC 2015 D11/02: ",.Q.s1 .aoc.2015.day11.part2 .aoc.2015.day11.generate res;