.aoc.2015.day13.load:{[x]
	:flip `f`h`t!("S  I      S";" ") 0: -1_/:ssr[;"lose ";"lose -"] each read0 hsym `$x;
	};
	
.aoc.2015.day13.sitting:{[x;y]
	:raze each {y,/:'x except/:y:raze y}[y;]/[-1+count y;x],\:x;
	};

.aoc.2015.day13.happines:{[x;y]
	:sum {[x;y] sum exec h from y where f in x, t in x}[;y] each 2#'next\[-2+count x;x];
	};

.aoc.2015.day13.part1:{[x]
	:max .aoc.2015.day13.happines[;x] each .aoc.2015.day13.sitting[first p] p:distinct x`f;
	};

.aoc.2015.day13.part2:{[x]
	x,:((`Me;0),/:distinct x`f),(distinct x`f),\:(0;`Me);
	:max .aoc.2015.day13.happines[;x] each .aoc.2015.day13.sitting[first p] p:distinct x`f;
	};
		
show "AOC 2015 D13/01: ",.Q.s1 .aoc.2015.day13.part1 .aoc.2015.day13.load "input.txt";
show "AOC 2015 D13/02: ",.Q.s1 .aoc.2015.day13.part2 .aoc.2015.day13.load "input.txt";