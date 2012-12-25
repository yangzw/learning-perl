#! /usr/bin/perl
use strict;

my $filename = "sample_text";
open my $fl,'<',$filename or die "Can't open $filename:$!";
chomp(my @strings = <$fl>);
while(1){
	print "Please enter a pattern:";
	chomp(my $pattern = <STDIN>);
	last if $pattern =~ /\A\s*\Z/;
	my @matches = eval{
		grep /$pattern/,@strings;
	};
	if($@){
		print "Error:$@";
	}else{
		my $count = @matches;
		print "There were $count matching strings:\n",map "$_\n",@matches;
	}
	print "\n";
}
