#! /usr/bin/perl
# 第二章 标量数据的练习

$a = "haha " x 3 . "b\n";
print $a;

$fred = 12;
$ban = 'hello';
$ban = $fred * 2;
print $ban . "\n";

$name = "meachel";
$saying = 'hi there! $name' . "\n";
print $saying;

$alef = chr(0x05D0);
$alpha = chr(hex('03B1'));
$omega = chr(0x03c9);
print "you are $name $saying $alef $alpha $omega s\n";


$still_true = !! 'Fred';
$still_false = !! '0';
print "true: $still_true; false: $still_false; \n";

print "hei $name, say something!\n";
chomp($line = <STDIN>);
if($line eq "\n")
{
	print "blanck\n";
}
else
{
	print "you just said \"$line\", right?\n";
}

$n = 1;
while($n < 10)
{
	$sum += $n;
	$n += 2;
}
print "Sum is $sum\n";

$uf = undef;
if(!defined($uf))
{
	print "the input is null\n";
}
