#! /usr/bin/perl
use strict;

print "\n----------------我是分割线-----------------\n";
my %try_hash = ('foo',32,'bar',12.7,'you',"hello",'enlsid',1.77e10,'bed',"aeas\n");
my @array_hash= %try_hash;
print "@array_hash\n";
my %re_hash = reverse %try_hash;
@array_hash= %re_hash;
print "@array_hash\n";

print "\n----------------我是分割线-----------------\n";
my %another = (
	fred => 'you',
	hello => 'fuck',
	asoe => 22.57e10,
);
@array_hash = %another;
print "@array_hash\n";
print $another{fred};

print "\n----------------我是分割线-----------------\n";
my @k = keys %another;
my @v = values %another;
my $count = keys %another;
print "\@k is \"@k\" and \@v is \"@v\" and \$count is $count\n";

print "\n----------------我是分割线-----------------\n";
my $key;
my $value;
while(($key,$value) = each %another){
	print "$key => $value\n";
}

foreach $key(sort keys %another){
	print "$key => $another{$key}\n";
}

print "\n----------------我是分割线-----------------\n";
sub isin{
my $name = shift @_;
if(exists $another{$name})
{
	print "in\n";
}
else{
	print "not in\n";
}
}
isin("fred");
isin("feddd");
print "\n----------------我是分割线-----------------\n";
delete $another{fred};
isin("fred");
print "\n----------------我是分割线-----------------\n";
print "PATH is $ENV{PATH}\n";
