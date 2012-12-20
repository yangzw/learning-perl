#! /usr/bin/perl
## Copyright <C> 2012 by Yang Truly
use strict;

my $what = "fred|barney";
my $try = "i have a name is fredfredbarney";
if($try =~ /($what){3}/){
	print "matchted\n";
}
