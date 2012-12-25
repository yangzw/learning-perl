#! /usr/bin/perl
use strict;

my $dir = "/";
chdir $dir or die "can't chdir $dir\n";
my @result = `ls -l`;
print @result;
