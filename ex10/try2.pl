#! /usr/bin/perl
use strict;
use 5.010;

chomp(my $width = <STDIN>);
my $size =  ($width < 10) ? "small" :
		($width < 20) ? "medium" :
		($width < 50) ? "large" :
		"ex-large";
print "$size\n";

foreach (0, undef,'0',1,23){
	print "Trying [$_] ---> ";
	my $value = $_ // 'default';
	say "\tgot [$value]";
}
