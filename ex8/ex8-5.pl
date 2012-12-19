#! /usr/bin/perl
use strict;

while(<>){
	chomp;
	if(/(?<word>\w*a)\b(?<last>.{0,5})/i){
		print "Matched: | $`<$&>$' |\n";
		print "'word' contains \'$+{word}\' and last is \'$+{last}\'\n";
	}
	else{
		print "No Match: | $_\ |\n";
	}
}
