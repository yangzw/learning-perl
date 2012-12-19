#! /usr/bin/perl
use strict;

while(<>){
	print $_ if((/.*F(r|R)(e|E)(d|D).*/) && !(/.*FRED.*/));
}
