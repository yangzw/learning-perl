#! /usr/bin/perl
use strict;
use 5.010;

my $you = "i am so Tired\n";
if($you =~ /\btired\b/i){
	print "You should have a rest\n";
}

my $feel = "tired";
if($you =~ /\b$feel/i){
	print "i find you are tired\n";
}

my $dino = "I fear that I'll be extinct after 1000 years.\n";
if($dino =~ /([0-9]*) years/){
	print "That said '$1' years.\n";
}

my $_ = "bronto saurus burger";
if(/(?:bronto)? saurus (steak|burger)/){
	print "i want a $1\n";
}

my $names = "Fred Flintstone or Barney Flintstone";
if($names =~ /(?<name1>\w+) (?<lastname>\w+) (and|or) (?<name2>\w+) \g{lastname}/){
	print "I saw $+{name1} and $+{name2}  $+{lastname}\n";
}

if($dino =~ /'(\w+)\s/){
	print "\$\& is  \"$&\" \nand \$\` is \"$`\" \nand \$\' is \"$'\" .\n";
}

my $try = "you you you you are so beautiful";
if($try =~ /(you ){2,4}/){
	print "have 2-4 you\n";
}
