#! /usr/bin/perl
use strict;

my %words;
while(<>){
	chomp;
	$words{$_} += 1;
}

foreach (sort keys %words){
	print "Word $_ appears $words{$_} times\n";
}
