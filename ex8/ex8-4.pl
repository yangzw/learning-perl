#! /usr/bin/perl
use strict;

while(<>){
	chomp;
	if(/(?<word>\w*a)\b/i){
		print "Matched: | $`<$&>$' |\n";
		print "'word' contains \'$+{word}\'\n";
	}
	else{
		print "No Match: | $_\ |\n";
	}
}
