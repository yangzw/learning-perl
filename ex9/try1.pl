#! /usr/bin/perl
use strict;

$_ = "you are so beautiful, do you know that?";
s/you/i/;
print "$_\n";

my $add = "http:\\\\\\www.baidu.com";
my $copy = $add =~ s#http:\\+#https://#r;
print "$add and \$copy is $copy\n";

$add =~ s/(baidu)/\u\L$1/i;
print "$add\n";

my @array = split;
foreach(@array){
	print "$_\n";
}

@array = split /:/, ":e::a:b:c::";
foreach(@array){
	print "$_\n";
}

my $y = join "-",@array;
print "$y\n";

my $data = "Barney Rubble Fred Flintstone Wilma Flintstone";
my %name = ($data =~/(\w+)\s(\w+)/g);
print "$name{Barney}\n";

my $filename = "story.txt";
open FILE,$filename or die "Can't open '$filename': $!";
my $lines = join '',<FILE>;
$lines =~ s/^/$filename: /gm;
print $lines;
