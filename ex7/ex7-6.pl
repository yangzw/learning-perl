#! /usr/bin/perl
use strict;

while(<>){
	print $_ if(/.*((fred.*wilma)|(wilma.*fred)).*/);
}
