#! /usr/bin/perl
use strict;
use 5.010;

$_ = "you are\n";
if(/\p{Space}/)
{
	print "There are spaces\n";
}
if(/\P{Digit}/){
	print "There is no digits\n";
}

$_ = "yabba dabba doo";
if(/y((.)(.)\3\2) d\1/){
	print "matched1\n";
}
$_ = "yay11bb";
if(/(.)(.)\g{-2}11(.)\g-1/){
	print "matched2\n";
}

$_ = "you\t are";
if(/you( |\t)+are/){
	print "mathed3\n";
}

if(/y[^u][^\t][^o] are/){
	print "mathed4\n";
}
