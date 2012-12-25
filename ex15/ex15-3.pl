#! /usr/bin/perl
use strict;
use 5.014;

print "Please input the dir:\n";
chomp(my $dir = <STDIN>);
$dir = ($dir =~ /\A\s*\Z/) ? "/" : $dir;
chdir $dir or die "cannot chdir $dir\n";

opendir my $dh,$dir or die "cannot open $dir\n";
print "all files if below:\n";
foreach(sort readdir $dh){
	print "$_ ";
	when(-r $_) {print"readable ";continue}
	when(-w $_) {print"writedable ";continue}
	when(-x $_) {print"execable ";continue}
	default {print"\n"}
}
close $dh;
