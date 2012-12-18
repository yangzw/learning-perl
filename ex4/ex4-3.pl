#! /usr/bin/perl
use strict;

sub average{
	my $sum = shift @_;
	foreach(@_){
		$sum += $_;
	}
	my $average = $sum / (@_+2);
}

sub above_average{
	my @larger;
	my $average = average(@_);
	foreach(@_){
		if($_ > $average)
		{
			push @larger,$_;
		}
	}
	@larger;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";

my @barney = above_average(100,1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
