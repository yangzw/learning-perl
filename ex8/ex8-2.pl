#! /usr/bin/perl
use strict;

while(<>){
	chomp;
	if(/\w+a\b/){
		print "Matched: | $`<$&>$' |\n";
	}
	else{
		print "No Match: | $_\ |\n";
	}
}
