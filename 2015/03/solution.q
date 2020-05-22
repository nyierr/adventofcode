.aoc.2015.day03.part1:{[x]
	m:("^v><"!((0;1);(0;-1);(1;0);(-1;0)));
	:count distinct (+\) enlist[(0;0)],m x;
	};

.aoc.2015.day03.part2:{[x]
	m:("^v><"!((0;1);(0;-1);(1;0);(-1;0)));
	:count distinct raze (+\) each enlist[(0;0)],/:x@/:where each count[x:m x]#'(10b;01b);
	};

show "AOC 2015 D03/01: ",.Q.s1 .aoc.2015.day03.part1 raze read0`$":input.txt";
show "AOC 2015 D03/02: ",.Q.s1 .aoc.2015.day03.part2 raze read0`$":input.txt";