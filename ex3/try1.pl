#! /usr/bin/perl

$rock[0] = "you\n";
$rock[3] = "hi\n";
print $rock[-1];
print "rock2 $rock[2.42];\n";

($a,$b,$c,$d) = qw(this is a );
print "$a $b $c hah $d d\n";
($a,$b) = ($b,$a);
print "$a $b\n";

@rocks = qw / a b c d /;
@p = (@rocks, undef, "hello you\n");
print @p;
$rocks[5] = "\n";
print @rocks ;

@giant  = 1..1e1;
@copy = @giant;
print @copy;
print "\n";

$tmp = pop @giant;
print @giant;
print "\n";
push @a,9;
push @a, 1..6;
push @giant, @a;
print @giant;
print "\n";

shift @giant;
shift @giant;
print @giant;
print "\n";

unshift @giant, 99;
unshift @giant ,100;
print @giant;
print "\n";

@array = qw / ab cd ed fd efas asef /;
print @array;
print "\n";
splice @array, 1, 0, qw /you hello/;
print @array;
print "\n";
@remove = splice @array, 1,3;
print @remove;
print "\n";
print "after splice the array is @array a\n";
$array = "right";
print "this is $array[2]\n";
print "this is $array\[2]\n";

foreach $array(@array) {
	$array = "$array\@";
	print "each $array\n";
}
print "\@array is @array\n";
print "\$array is still $array\n";

$_ = "i am the default\n";
print;

foreach(1..10){
	print "i can count to $_!\n";
}

@array = reverse @array;
print "@array\n";

@array = sort @array;
print "@array\n"; 

$number = @array;
print "$number\n";

$array = reverse @array;
print "$array\n";

print "i have ", @array, " in \@array, you know?\n";
print "i have ", scalar @array, " in \@array, you know?\n";

chomp (@array = <STDIN>);
print "@array";
