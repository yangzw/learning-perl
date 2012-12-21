#! /usr/bin/perl
use strict;

my @words = qw/fred barney pebbles dino wilma betty/;
my $errors = 0;

foreach(@words){
	print "Type the word '$_':";
	chomp(my $try = <STDIN>);
	if($try ne $_){
		print "Sorry - That's not right.\n\n";
		$errors++;
		redo;
	}
}
print "You've completed the test, with $errors errors.\n";
