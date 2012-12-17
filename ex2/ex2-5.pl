#! /usr/bin/perl

print "input string\n";
chomp($string = <STDIN>);
print "input times\n";
chomp($times = <STDIN>);
$string = $string x $times;
print "result is \"$string\"\n";
