.aoc.2015.day12.part1:{[x]
	:"J"$"," vs x where any "0123456789-,"=\:x;
	};

.aoc.2015.day12.part2:{[x]
	t:type x;
	if[9h~abs t; :x];
	if[0h~t; :raze .z.s each x];
	if[98h~t;
		x:raze x;
		t:type x;
		];
	if[99h~t;
		if[any "red"~/:value x; :0];
		:raze .z.s each value x;
		];
	:0;
	};
	
show "AOC 2015 D12/01: ",.Q.s1 sum .aoc.2015.day12.part1 first read0`$":input.txt";
show "AOC 2015 D12/02: ",.Q.s1 sum .aoc.2015.day12.part2 .j.k first read0`$":input.txt";