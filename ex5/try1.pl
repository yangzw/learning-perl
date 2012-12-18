#! /usr/bin/perl
use strict;

@ARGV = qw/tmp.txt - tmp1.txt/;

#print <>;

while(<>)
{
	chomp;
	print "it was $_ what i seen\n";
}

printf "%12.3f%%\n",67/7;

my @array = qw \you are beautiful right ?\;
printf "The \@array are:\n" . ("%30s\n" x @array),@array;

open FILE,'>>','tmp.txt';
print FILE "you are beaufiful\n";
select FILE;
print "haha, now i can print to tmp.txt\n";
select STDOUT;
close FILE;
