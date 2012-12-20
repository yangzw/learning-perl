#! /usr/bin/perl
use strict;

my %todo;
foreach(@ARGV){
	$todo{$_} = 1;
}

while(<>){
	if(/\A## Copyright/){
		delete $todo{$ARGV};
	}
}

@ARGV = sort keys %todo;
$^I = ".back5";
if(@ARGV >= 1){
	while(<>){
		if(/^#!/){
			$_ .= "## Copyright <C> 2012 by Yang Truly\n";
		}
		print;
	}
}
