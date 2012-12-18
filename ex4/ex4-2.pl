#! /usr/bin/perl

use strict;


sub total{
	chomp(@_);
	my($sum)  = shift @_;
	foreach(@_){
		$sum += $_;
	}
	$sum;
}

my @count = 1..1000;
my $total_count = total(@count);
print "The sum from 1 to 1000 is $total_count\n";
