#! /usr/bin/perl
use strict;
use 5.014;

print "Input a number(you can input exit to quit):\n";
while(1){
	chomp(my $guess = <STDIN>);
	given($guess){
		when(/\Aquit\z/) {print "quit\n";last}
		when(!/[0-9]+/)	{print "not a number\n"}
		when($_ % 3 == 0){print "Fizz ";continue}
		when($_ % 5 == 0){print "Bin ";continue}
		when($_ % 7 == 0){print "Sausage";continue}
		default {print "\n"}
	};
};
