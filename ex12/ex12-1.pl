#! /usr/bin/perl
use strict;

foreach (@ARGV){
	print "the file $_ is:\n";
	if(-e $_){
		print "already exitst\n";
		print "could read\n" if -r $_;
		print "could write\n" if -w $_;
		print "could exec\n" if -x $_;
	}
	else{
		print "not exists\n";
	}
}
