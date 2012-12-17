#! /usr/bin/perl

print "please input numbers:\n";
chomp(@array = <STDIN>);
@names = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
foreach (@array){
	print "@names[$_ - 1]\n";
}
