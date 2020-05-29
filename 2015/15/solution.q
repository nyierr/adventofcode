.aoc.2015.day15.load:{[x]
	:flip `c`d`f`t`cal!("  I I I I I";" ") 0: ssr[;", ";" "] each read0 hsym`$x;
	};
	
.aoc.2015.day15.proportions:{[x;p]
	if[p<=1;:x];
	:raze ((count each r)#'i),''r:.z.s[;p-1] each x-i:til 1+x;
	};
	
.aoc.2015.day15.part1:{[t;p]
	:prd 0|sum each value[flip delete cal from t]*\:p;
	};

.aoc.2015.day15.part2:{[t;p]
	:prd[-1_r]*500=last r:0|sum each value[flip t]*\:p;
	};
	
show "AOC 2015 D15/01: ",.Q.s1 max .aoc.2015.day15.part1[.aoc.2015.day15.load"input.txt"] each .aoc.2015.day15.proportions[100;4]; 
show "AOC 2015 D15/02: ",.Q.s1 max .aoc.2015.day15.part2[.aoc.2015.day15.load"input.txt"] each .aoc.2015.day15.proportions[100;4]; 