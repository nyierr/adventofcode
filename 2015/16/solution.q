.aoc.2015.day16.load:{[x]
	d:`children`cats`samoyeds`pomeranians`akitas`vizslas`goldfish`trees`cars`perfumes!10#0Ni;
	i:"SI"$/:/:0N 2#/:2_/:" " vs/: ssr/[;(", ";": ");2#" "] each read0 hsym`$x;
	:d,/:i[;;0]!'i[;;1];
	};
	
.aoc.2015.day16.part1:{[data]
	e:`children`cats`samoyeds`pomeranians`akitas`vizslas`goldfish`trees`cars`perfumes!3 7 2 3 0 0 5 3 2 1;
	:1+?[data;{[x;y] (in;x;(),y)} ./: flip (key e;0N,/:value e);();`i];
	};
	
.aoc.2015.day16.part2:{[data]
	e:`children`samoyeds`akitas`vizslas`cars`perfumes!3 2 0 0 2 1;
	ne:`cats`trees`pomeranians`goldfish!7 3 3 5;
	ec:{[x;y] (in;x;(),y)} ./: flip (key e;0N,/:value e);
	nec:{[x;y;z] (or;(null;x);(z;x;y))} ./: flip (key ne;value ne;(>;>;<;<));
	:1+?[data;ec,nec;();`i];
	};
	
show "AOC 2015 D16/01: ",.Q.s1 max .aoc.2015.day16.part1 .aoc.2015.day16.load "input.txt";
show "AOC 2015 D16/02: ",.Q.s1 max .aoc.2015.day16.part2 .aoc.2015.day16.load "input.txt";