.aoc.2015.day10.helper:{[i;x]
	:count {raze (string 1_deltas i,count x),'x i:where differ (),x}/[i;x];
	};
	
.aoc.2015.day10.part1:.aoc.2015.day10.helper[40];
.aoc.2015.day10.part2:.aoc.2015.day10.helper[50];

show "AOC 2015 D10/01: ",.Q.s1 .aoc.2015.day10.part1 first read0`$":input.txt";
show "AOC 2015 D10/02: ",.Q.s1 .aoc.2015.day10.part2 first read0`$":input.txt";