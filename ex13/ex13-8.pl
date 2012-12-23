#! /usr/bin/perl
use strict;

opendir NOW,".";
foreach(readdir NOW){
	my $where = readlink $_;
	print "$_ -> $where\n" if $where;
}
close NOW;
