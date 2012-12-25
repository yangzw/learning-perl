#! /usr/bin/perl
use strict;
use 5.014;

my %names = (
	'fred' => 19,
	'you' => 22,
	'fu' => 32,
	'no' => 44,
);

say "I found a key matching 'Fred'" if %names ~~ /fred/;

my @array1 = qw /a b c/;
my @array2 = qw /a b c/;
print "the two array is the same\n" if @array1 ~~ @array2;

say "match number ~~ string" if 4 ~~ "4abe";
say "match string ~~ number" if "4abe" ~~ 4;
