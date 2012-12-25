#! /usr/bin/perl
use strict;

my $now = `perl time.pl`;
print "Now is $now";
if($now =~ /\AS/){
	print "go play!\n";
}
else{
	print "go to work!\n";
}
