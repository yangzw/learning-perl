#! /usr/bin/perl
use strict;

my @all_files = glob '* .*';
foreach(@all_files){
	my($atime,$mtime) = map{
	my( $year,$month,$day) = (localtime($_))[5,4,3];
	$year += 1900;
	$month += 1;
	sprintf '%4d-%2d-%2d',$year,$month,$day;
	}(stat $_)[8,9];
	printf "%-15s %10s %10s\n",$_,$atime,$mtime;
}
