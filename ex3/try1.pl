#! /usr/bin/perl

$rock[0] = "you\n";
$rock[3] = "hi\n";
print $rock[-1];
print "rock2 $rock[2.42];\n";

($a,$b,$c,$d) = qw(this is a );
print "$a $b $c hah $d d\n";
($a,$b) = ($b,$a);
print "$a $b\n";
