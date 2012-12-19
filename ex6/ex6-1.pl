#! /usr/bin/perl
use strict;

my %name_hash = (
	fred => "flintstone",
	barney => "rubble",
	wilma => "flintsonte",
);
print "Please input your first name:\n";
chomp(my $first_name = <STDIN>);
if(exists $name_hash{$first_name}){
	print "The last name of $first_name is $name_hash{$first_name}\n";
}
else{
	print "Could not find\n";
}
