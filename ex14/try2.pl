#! /usr/bin/perl
use strict;

my %score = ("barney" => 195, "fred" => 205, "dino" => 30, "kid"=>233, "cld"=>233);
my @winnders = sort { $score{$b} <=> $score{$a} or $a cmp $b}  keys %score;
print "@winnders\n";
