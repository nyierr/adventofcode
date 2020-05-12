// Day 01
.aoc.2015.prob01.part1:{[input]
	:u+neg count[input]-u:sum input="(";
    };
	
.aoc.2015.prob01.part2:{[input]
	:1+((-/) sums each input=/:("(";")"))?-1;
	};
	
show "AOC 2015 P01/01: ",.Q.s1 .aoc.2015.prob01.part1 raze read0`$":problems/01/input.txt";
show "AOC 2015 P01/02: ",.Q.s1 .aoc.2015.prob01.part2 raze read0`$":problems/01/input.txt";
