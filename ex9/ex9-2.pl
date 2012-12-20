#! /usr/bin/perl
## Copyright <C> 2012 by Yang Truly
use strict;

my $filename = $ARGV[0];
my $outname = $filename . ".out";

open OUTFILE,'>',$outname;
while(<>){
	s/Fred/Larry/gi;
	print OUTFILE $_;
}
