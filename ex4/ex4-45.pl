#! /usr/bin/perl
use strict;
#由于本机的版本过于低于5.10，所以不能使用state。。故设置那两个都为全局变量;
my $num = 0;
my @names;
sub greet{
	my $name = shift @_;
	if($num == 0)
	{
		print "Hi $name! You are the first one here!\n";
	}
	else
	{
		print "Hi $name! @names is also here!\n";
	}
	push @names,$name;
	$num += 1;
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
