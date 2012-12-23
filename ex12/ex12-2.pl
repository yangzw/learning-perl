#! /usr/bin/perl
use strict;

die "The file is not exists\n" unless @ARGV;
my $ofile = shift @ARGV;
my $otime = -M $ofile;

foreach(@ARGV){
	my $t = -M $_;
	if($t > $otime){
		$otime = $t;
		$ofile = $_;
	}
}
printf "The oldest file is $ofile and it's time is %.1f days old\n", $otime;
