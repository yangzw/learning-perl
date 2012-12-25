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

given($ARGV[0]){
	when(! /\A[0-9]+\z/) {print "this is not a number!\n"}
	my @result = divisors($_);
	my @tmp;
	when(@result ~~ @tmp) {print "this is a prime number\n"}
	default {print "the number is divided by @result\n"}
}
