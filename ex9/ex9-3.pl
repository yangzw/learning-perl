#! /usr/bin/perl
use strict;

my $name = $ARGV[0] . ".out2";
open OUTFILE,'>',$name;

while(<>){
	chomp;
	s/Fred/\n/gi;
	s/Wilma/Fred/gi;
	s/\n/Wilma/gi;
	print OUTFILE "$_\n";
}
