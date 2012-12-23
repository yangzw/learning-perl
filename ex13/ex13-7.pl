#! /usr/bin/perl
use strict;

use File::Basename;
use File::Spec;

my $sorce;
my $des;
my $flag;
if(@ARGV == 2){
	($sorce,$des) = @ARGV;
	$flag = "n";
}
elsif(@ARGV == 3){
	($flag,$sorce,$des) = @ARGV;
}

if(-d $des){
	my $basename = basename $sorce;
	$des = File::Spec->catfile($des,$basename);
}

if($flag eq "n"){
	link $sorce,$des or die "can't link $sorce to $des: $!\n";
}
elsif($flag eq "-s"){
	symlink $sorce,$des or die "can't link $sorce to $des: $!\n";
}
