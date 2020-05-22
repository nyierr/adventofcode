.aoc.2015.day11.generate:{[x]
	:(neg count x)#"a"^(" ",.Q.a) 27 vs 1+27 sv -96+"j"$x;
	};

.aoc.2015.day11.isValid:{[x]
	if[any "iol" in x;:0b];
	if[not 1 in deltas where 1=deltas "j"$x;:0b];
	:1<sum 1 in/:1_/:deltas each where each .Q.a=\:x;
	};
	
.aoc.2015.day11.part1:{[x]
	:.aoc.2015.day11.generate/[{not .aoc.2015.day11.isValid x};x];
	};
	
.aoc.2015.day11.part2:.aoc.2015.day11.part1;

show "AOC 2015 D11/01: ",.Q.s1 res:.aoc.2015.day11.part1 first read0`$":input.txt";
show "AOC 2015 D11/02: ",.Q.s1 .aoc.2015.day11.part2 .aoc.2015.day11.generate res;