#! /usr/bin/perl
use strict;

print "Please input the dir you want to go:\n";
chomp(my $dir = <STDIN>);
$dir = ($dir =~ /\A\s*\Z/) ? "/" : $dir;
chdir "$dir" or die "cannot chdir to $dir: $!";

my @all_files = glob '.* *';
print "all files if below:\n";
foreach(@all_files){
	print "$_\n";
}
