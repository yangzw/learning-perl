#! /usr/bin/perl
use strict;
use 5.014;

sub divisors{
	my $number = shift;
	my @division;
	foreach(2 ..($number/2)){
		push @division,$_ unless $number % $_;
	}
	return @division;
}

my $favorit = $ARGV[1];
given($ARGV[0]){
	when(! /\A[0-9]+\z/) {print "this is not a number!\n"}
	my @result = divisors($_);
	my @tmp;
	when(2 ~~ @result){print "the number is even\n";continue}
	when(!(2 ~~ @result)){print "the number is odd\n";continue}
	when(@result ~~ @tmp) {print "this is a prime number\n"}
	when($favorit ~~ @result){print "can divided by my favorit number $favorit\n";continue}
	default {print "the number is divided by @result\n"}
}
