#! /usr/bin/perl
use strict;

foreach(@ARGV){
	unlink $_ or warn "failed on $_: $!\n";
}
