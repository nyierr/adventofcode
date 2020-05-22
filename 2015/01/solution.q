.aoc.2015.day01.part1:{[x]
	:u+neg count[x]-u:sum x="(";
    };
	
.aoc.2015.day01.part2:{[x]
	:1+((-/) sums each x=/:("(";")"))?-1;
	};
	
show "AOC 2015 D01/01: ",.Q.s1 .aoc.2015.day01.part1 raze read0`$":input.txt";
show "AOC 2015 D01/02: ",.Q.s1 .aoc.2015.day01.part2 raze read0`$":input.txt";