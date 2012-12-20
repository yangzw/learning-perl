#! /usr/bin/perl
use strict;

$^I = ".back";
while(<>){
	if(/^#!/){
		$_ .= "## Copyright <C> 2012 by Yang Truly\n";
	}
	print;
}
