#! /usr/bin/perl
use strict;

my $long = "some very very long string";
my $right = substr($long,index($long,'l'));
print "\$right: $right\n";

substr($long,0,4) = "Much";
print "$long\n";

substr($long,10) =~ s/very/little/g;
print "$long\n";

