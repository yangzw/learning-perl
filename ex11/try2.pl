#! /usr/bin/perl
use strict;
use Time::Piece;
use DateTime;

my $t = localtime;
print "The month is ". $t->month ."\n";

my $dt = DateTime->from_epoch(epoch=>time);
printf "%4d%02d%02d\n", $dt->year,$dt->month,$dt->day;
