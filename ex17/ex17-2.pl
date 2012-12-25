#! /usr/bin/perl
use strict;

my @all_files = glob '* .*';
foreach(@all_files){
	my($atime,$mtime) = (stat)[8,9];
	printf "%-15s %10d %10d\n",$_,$atime,$mtime;
}
