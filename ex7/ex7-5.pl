#! /usr/bin/perl
use strict;
use 5.014;

while(<>){
	print $_ if(/.*([^\s])\g{-1}.*/);
}
