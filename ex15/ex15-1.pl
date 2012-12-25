#! /usr/bin/perl
use strict;
use 5.014;


my $magic = int(1+ rand 100);
while(1){
	print "Please guess:";
	chomp(my $guess = <STDIN>);
	given($guess){
		when(/\A(exit|quit|\s*)\z/) {print "quit\n";last}
		when(!/[0-9]+/)	{print "not a number\n"}
		when($_ > $magic){print "Too hight\n"}
		when($_ < $magic){print "Too low\n"}
		when($_ == $magic) {print "you are right\n";last}
	};
};

