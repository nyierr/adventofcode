.aoc.2015.day.helper:{[f;x]
    x:flip `f`t`d!("S S J";" ") 0: x;
	:f@{[x;r]
		:sum {[x;y;z]
			:first exec d from x where f in (y;z), t in (y;z);
			}[x] .' 2#'next\[-2+count r;r]
		}[x] each {raze y,/:'x except/:y}[c;]/[-1+count c;] c:distinct raze x`f`t;
	};

.aoc.2015.day09.part1:.aoc.2015.day.helper[min];
.aoc.2015.day09.part2:.aoc.2015.day.helper[max];

show "AOC 2015 D09/01: ",.Q.s1 .aoc.2015.day09.part1 `$":input.txt";
show "AOC 2015 D09/02: ",.Q.s1 .aoc.2015.day09.part2 `$":input.txt";