#! /usr/bin/perl
use strict;
use 5.014;

given($ARGV[0]){
	when('fred') {say "hi";continue}
	when(/fred/){say "hiagain";continue}
	when(/\Afred/){say "hi3";continue}
	when(/fred/i){say "hi4"}
	default {say "hi5"}
};

my @array = qw /you are beautiful/;
foreach(@array){
	say "processing...\n";
	when(/beautiful/) {say "i see beautiful in the comments";continue}
	when(/ugly/) {say "i see ugly in the comments";continue}
	default {say "i see neither beautiful nor ugly in the comments"}
}
