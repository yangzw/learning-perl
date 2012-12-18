#! /usr/bin/perl
use strict;

my @array = <STDIN>;
chomp(@array);
print "1234567890" x 6 . "\n";
foreach(@array){
	printf "%20s\n",$_;
}
