.aoc.2015.day05.part1:{[x]
	:all(x~ssr/[x;("ab";"cd";"pq";"xy");" "];any not differ x;2<sum raze x=/:"aeiou");
	};

.aoc.2015.day05.part2:{[x]
	:all(any all each (reverse each t)=t; any 1<count each group -1_/:t; not any all each not 1_/:differ each t:x@/:(0,1,2)+/:n:til count x);
	};

show "AOC 2015 D05/01: ",.Q.s1 sum .aoc.2015.day05.part1 each read0`$":input.txt";
show "AOC 2015 D05/02: ",.Q.s1 sum .aoc.2015.day05.part2 each read0`$":input.txt";