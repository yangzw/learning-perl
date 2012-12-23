#! /usr/bin/perl
use strict;

my $filename = "tmp.txt";
print "the file '$filename' is already exists\n" if -e $filename;

open FILE,">",$filename;
warn "the file '$filename' is too new\n" if -M FILE < 1;

warn "the file '$filename' is too small\n" if -s FILE < 10;

my $dir = "try";
if(-d $dir and -s _ < 521){
	print "The dir is less than 521\n";
}

my $timestamp = 1180630098;
my $date = localtime $timestamp;
my $time = gmtime;
print "$date | $time\n";
