#! /usr/bin/perl
use strict;

print "Please input the dir you want to go:\n";
chomp(my $dir = <STDIN>);
$dir = ($dir =~ /\A\s*\Z/) ? "/" : $dir;
chdir "$dir" or die "cannot chdir to $dir: $!";

opendir my $dh,$dir or die "cannot open $dir\n";
print "all files if below:\n";
foreach(sort readdir $dh){
	print "$_\n";
}
close $dh;
