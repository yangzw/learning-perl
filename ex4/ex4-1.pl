#! /usr/bin/perl
use strict;

sub total{
	chomp(@_);
	my($sum)  = shift @_;
	foreach(@_){
		$sum += $_;
	}
	$sum;
}

my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "the total of \@fred is $fred_total\n";
print "Enter some numbers on separate lines:";
my $usr_total = total(<STDIN>);
print "The total of those numbers is $usr_total\n";

