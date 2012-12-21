#! /usr/bin/perl
use strict;

my $magic = int(1+ rand 100);
while(1){
	print "Please guess:";
	chomp(my $guess = <STDIN>);
	if($guess =~ /quit|exit|\A\s*\z/){
		last;
	}
	elsif($guess == $magic){
		print "You guess right\n";
		last;
	}
	elsif($guess > $magic){
		print "Too hight\n";
	}
	else{
		print "Too low\n";
	}
}
