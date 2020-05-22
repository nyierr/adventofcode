.aoc.2015.day02.part1:{[x]
	:min[s]+sum 2*s:(1 rotate i)*i:"I"$"x" vs x;
	};
	
.aoc.2015.day02.part2:{[x]
	:(2*sum 2#i iasc i)+(*/) i:"I"$"x" vs x;
	};

show "AOC 2015 D02/01: ",.Q.s1 sum .aoc.2015.day02.part1 each read0`$":input.txt";
show "AOC 2015 D02/02: ",.Q.s1 sum .aoc.2015.day02.part2 each read0`$":input.txt";