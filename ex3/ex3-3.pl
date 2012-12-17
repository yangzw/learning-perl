#! /usr/bin/perl

print "input your strings\n";
@array = <STDIN>;
print "would you like to show in one line(yes or others)";
chomp($choice = <STDIN>);
if($choice eq "yes")
{	
	chomp(@array)
}
print sort "@array";
