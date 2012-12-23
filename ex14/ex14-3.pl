#! /usr/bin/perl
use strict;

print "Please input string:\n";
chomp(my $string = <STDIN>);
print "Please input substring:\n";
chomp(my $substring = <STDIN>);

my @loca;
for(my $pos = -1;;){
	$pos = index($string,$substring,$pos+1);
	last if $pos == -1;
	push @loca,$pos;
}

print "'$substring' in '$string' is:@loca\n";
