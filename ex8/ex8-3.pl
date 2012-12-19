#! /usr/bin/perl
use strict;

while(<>){
	chomp;
	if(/(\w*a)\b/i){
		print "Matched: | $`<$&>$' |\n";
		print "\$1 contains \'$1\'\n";
	}
	else{
		print "No Match: | $_\ |\n";
	}
}
