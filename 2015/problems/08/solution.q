.aoc.2015.day08.part1:{[x]
	:count[x]-count[ssr/[x;("\\x[a-f0-9][a-f0-9]";"\\\\";"\\\"");" "]]-2;
	};
	
.aoc.2015.day08.part2:{[x]
	:count[except[.Q.s x;"\r\n"]] - count x;
	};

show "AOC 2015 D08/01: ",.Q.s1 sum .aoc.2015.day08.part1 each read0`$":input.txt";
show "AOC 2015 D08/02: ",.Q.s1 sum .aoc.2015.day08.part2 each read0`$":input.txt";