// Day 01
.aoc.2015.day01.part1:{[input]
	:u+neg count[input]-u:sum input="(";
    };
	
.aoc.2015.day01.part2:{[input]
	:1+((-/) sums each input=/:("(";")"))?-1;
	};
	
show "AOC 2015 D01/01: ",.Q.s1 .aoc.2015.day01.part1 raze read0`$":problems/01/input.txt";
show "AOC 2015 D01/02: ",.Q.s1 .aoc.2015.day01.part2 raze read0`$":problems/01/input.txt";

// Day 02
.aoc.2015.day02.part1:{[input]
	:min[s]+sum 2*s:(1 rotate i)*i:"I"$"x" vs input;
	};
	
.aoc.2015.day02.part2:{[input]
	:(2*sum 2#i iasc i)+(*/) i:"I"$"x" vs input;
	};

show "AOC 2015 D02/01: ",.Q.s1 sum .aoc.2015.day02.part1 each read0`$":problems/02/input.txt";
show "AOC 2015 D02/02: ",.Q.s1 sum .aoc.2015.day02.part2 each read0`$":problems/02/input.txt";