#! /usr/bin/perl
use strict;
use 5.010;

$ENV{Z} = 0;
$ENV{N} = '';
$ENV{U} = undef;

my $longest = 0;
foreach (keys %ENV){
	my $key_length = length($_);
	$longest = $key_length if $key_length > $longest;
}
foreach(sort keys %ENV){
	printf "%-${longest}s	%s\n",$_,$ENV{$_} // "undefined value";
}
