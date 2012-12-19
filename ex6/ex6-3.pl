#! /usr/bin/perl
use strict;

my $longest = 0;
foreach (keys %ENV){
	my $key_length = length($_);
	$longest = $key_length if $key_length > $longest;
}
foreach(sort keys %ENV){
	printf "%-${longest}s	%s\n",$_,$ENV{$_};
}
