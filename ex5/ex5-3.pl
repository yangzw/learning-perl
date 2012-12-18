#! /usr/bin/perl
use strict;

print "Please set the width\n";
chomp(my $width = <STDIN>);

print "Please input your strings\n";
chomp(my @array = <STDIN>);

print "1234567890" x ($width/ 10) . "1234567890\n";
foreach(@array){
	printf "%${width}s\n",$_;
}
