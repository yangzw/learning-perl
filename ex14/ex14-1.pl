#! /usr/bin/perl
use strict;

my @num;
push @num,split while <>;
print "@num\n";
foreach(sort {$a <=> $b} @num){
	printf "%10g\n",$_;
}
