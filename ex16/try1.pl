#! /usr/bin/perl
use strict;

my $now = `date`;
print "the time is now $now";

my @who_lines = `who`;
print "@who_lines\n";

open my $find_fh,'-|','find',qw(/home/yang -atime +90 -size +1000 -print) or die "fork: $!";
while(<$find_fh>){
	chomp;
	printf "%s size %dK last accessed %.2f days ago\n",$_,(1023 + -s $_)/1024,-A $_;
};
