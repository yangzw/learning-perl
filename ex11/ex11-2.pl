#! /usr/bin/perl
use strict;

use DateTime;
use Time::Piece;

my $t = localtime;
my $dt = DateTime->new(
	year => $t->year,
	month => $t->mon,
	day => $t->mday,
);
my $indt = DateTime->new(
	year => $ARGV[0],
	month => $ARGV[1],
	day => $ARGV[2],
);
my $duration = $dt - $indt;
my @units = $duration->in_units(qw(years months days));
printf "%d years, %d months, and %d days\n", @units;
