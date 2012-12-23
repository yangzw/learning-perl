#! /usr/bin/perl
use strict;
use File::Basename;
use File::Spec;

my($sorce,$des) = @ARGV;
if(-d $des){
	my $basename = basename $sorce;
	$des = File::Spec->catfile($des,$basename);
}

rename $sorce,$des or die "can't rename $sorce to $des: $!\n";
