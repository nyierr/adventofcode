.aoc.2015.day04.part1:{[x]
	:(1+)/[{m:3#"j"$md5 x,string y; not all(0 0~2#m;16>m 2)}[x]@;0];
	};

.aoc.2015.day04.part2:{[x]
	:(1+)/[{not 0x000000~3#md5 x,string y}[x]@;0];
	};
show "AOC 2015 D04/01: ",.Q.s1 .aoc.2015.day04.part1 raze read0`$":input.txt";
show "AOC 2015 D04/02: ",.Q.s1 .aoc.2015.day04.part2 raze read0`$":input.txt";