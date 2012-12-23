#! /usr/bin/perl
use 5.010;

die "There is no file\n" unless @ARGV;
foreach(@ARGV){
	print "The file $_ is readable and writeable\n" if -o -r -w $_;
}
