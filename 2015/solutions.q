// Day 01
.aoc.2015.day01.part1:{[x]
	:u+neg count[x]-u:sum x="(";
    };
	
.aoc.2015.day01.part2:{[x]
	:1+((-/) sums each x=/:("(";")"))?-1;
	};
	
show "AOC 2015 D01/01: ",.Q.s1 .aoc.2015.day01.part1 raze read0`$":problems/01/input.txt";
show "AOC 2015 D01/02: ",.Q.s1 .aoc.2015.day01.part2 raze read0`$":problems/01/input.txt";

// Day 02
.aoc.2015.day02.part1:{[x]
	:min[s]+sum 2*s:(1 rotate i)*i:"I"$"x" vs x;
	};
	
.aoc.2015.day02.part2:{[x]
	:(2*sum 2#i iasc i)+(*/) i:"I"$"x" vs x;
	};

show "AOC 2015 D02/01: ",.Q.s1 sum .aoc.2015.day02.part1 each read0`$":problems/02/input.txt";
show "AOC 2015 D02/02: ",.Q.s1 sum .aoc.2015.day02.part2 each read0`$":problems/02/input.txt";

// Day 03
.aoc.2015.day03.part1:{[x]
	m:("^v><"!((0;1);(0;-1);(1;0);(-1;0)));
	:count distinct (+\) enlist[(0;0)],m x;
	};

.aoc.2015.day03.part2:{[x]
	m:("^v><"!((0;1);(0;-1);(1;0);(-1;0)));
	:count distinct raze (+\) each enlist[(0;0)],/:x@/:where each count[x:m x]#'(10b;01b);
	};

show "AOC 2015 D03/01: ",.Q.s1 .aoc.2015.day03.part1 raze read0`$":problems/03/input.txt";
show "AOC 2015 D03/02: ",.Q.s1 .aoc.2015.day03.part2 raze read0`$":problems/03/input.txt";

// Day 05
.aoc.2015.day05.part1:{[x]
	:all(x~ssr/[x;("ab";"cd";"pq";"xy");" "];any not differ x;2<sum raze x=/:"aeiou");
	};

.aoc.2015.day05.part2:{[x]
	:all(any all each (reverse each t)=t; any 1<count each group -1_/:t; not any all each not 1_/:differ each t:x@/:(0,1,2)+/:n:til count x);
	};

show "AOC 2015 D05/01: ",.Q.s1 sum .aoc.2015.day05.part1 each read0`$":problems/05/input.txt";
show "AOC 2015 D05/02: ",.Q.s1 sum .aoc.2015.day05.part2 each read0`$":problems/05/input.txt";

// Day 06
.aoc.2015.day06.part1:{[x]
	g::1000 1000#0;
	{[m;x]
		c:x[1 2]+til each 1+x[3 4]-x[1 2];
		.[`g;c;m first x];
		}[`off`on`toggle!(0 0;1 1;1 0)] each {"SIIII"$@[;0 2 4 8 10] $["turn"~x 0;2;0]_x} each -4!'x;
	:sum sum g;
	};

.aoc.2015.day06.part2:{[x]
	g::1000 1000#0;
	{[m;x]
		c:x[1 2]+til each 1+x[3 4]-x[1 2];
		.[`g;c;m first x];
		}[`off`on`toggle!({0|x-1};1+;2+)] each {"SIIII"$@[;0 2 4 8 10] $["turn"~x 0;2;0]_x} each -4!'x;
	:sum sum g;
	};

show "AOC 2015 D06/01: ",.Q.s1 .aoc.2015.day06.part1 read0`$":problems/06/input.txt";
show "AOC 2015 D06/02: ",.Q.s1 .aoc.2015.day06.part2 read0`$":problems/06/input.txt";