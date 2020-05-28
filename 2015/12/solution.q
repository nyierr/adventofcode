.aoc.2015.day12.part1:{[x]
	:"J"$"," vs x where any "0123456789-,"=\:x;
	};

.aoc.2015.day12.part2:{[x]
	if[9h~abs t:type x; :x];
	if[any(0h~t;98h~t); :raze .z.s each x];
	if[99h~t;
		if[any "red"~/:value x; :0];
		:raze .z.s each value x;
		];
	:0;
	};
	
show "AOC 2015 D12/01: ",.Q.s1 sum .aoc.2015.day12.part1 first read0`$":input.txt";
show "AOC 2015 D12/02: ",.Q.s1 sum .aoc.2015.day12.part2 .j.k first read0`$":input.txt";