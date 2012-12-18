#! /usr/bin/perl
use strict;

my @array;
while(<>){
	push @array,$_;
}

print reverse @array;
