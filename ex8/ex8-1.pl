#! /usr/bin/perl
use strict;

while(<>){
	chomp;
	if(/match/){
		print "Matched: | $`<$&>$' |\n";
	}
	else{
		print "No Match: | $_\ |\n";
	}
}
