#! /usr/bin/perl
use strict;
use 5.014;

my %score;
my @names = qw{zero one two three four five six seven eight nine};
print "Bedrock @names[9,0,2,1,0]\n";

my @players = qw /barney fred dino/;
my @scores = (192, 345, 23);
@score{ @players } = @scores;

print "Tonight's players were:@players\n";
print "Their scores were:@score{@players}\n";


my @oddnumber = grep {$_ % 2} 1..100;
print "The oddnumbers are @oddnumber\n";
