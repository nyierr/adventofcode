.aoc.2015.helper.day06:{[m;x]
	g::1000 1000#0;
	{[m;x]
		c:x[1 2]+til each 1+x[3 4]-x[1 2];
		.[`g;c;m first x];
		}[m] each {"SIIII"$@[;0 2 4 8 10] $["turn"~x 0;2;0]_x} each -4!'x;
	:sum sum g;
	};

.aoc.2015.day06.part1:.aoc.2015.helper.day06[`off`on`toggle!(0 0;1 1;1 0)];
.aoc.2015.day06.part2:.aoc.2015.helper.day06[`off`on`toggle!({0|x-1};1+;2+)];

show "AOC 2015 D06/01: ",.Q.s1 .aoc.2015.day06.part1 read0`$":input.txt";
show "AOC 2015 D06/02: ",.Q.s1 .aoc.2015.day06.part2 read0`$":input.txt";