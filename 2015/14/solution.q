// part 1 --> floor (%;mod) (1000;137) 
.aoc.2015.day14.part1:{[x;y]
	:max y[`v]*(c*y`ft)+y[`ft]&x-tt*c:floor x%tt:sum y`ft`rt;
	};

// paret 2 
.aoc.2015.day14.part2:{[x;y]
	:max sum u='max each u:flip sums each x#'((#'/)y`ft`v),'y[`rt]#'0;
	};

show "AOC 2015 D14/01: ",.Q.s1 .aoc.2015.day14.part1[2503;`r`v`ft`rt!("S  I  I      I";" ") 0: hsym`$"input.txt"];
show "AOC 2015 D14/02: ",.Q.s1 .aoc.2015.day14.part2[2503;`r`v`ft`rt!("S  I  I      I";" ") 0: hsym`$"input.txt"];