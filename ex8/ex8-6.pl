#! /usr/bin/perl
use strict;

while(<>){
	chomp;
	if(/\s\z/){
		print "$_<is space\n";
	}
}
