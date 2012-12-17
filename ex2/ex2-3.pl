#! /usr/bin/perl


print "input radius\n";
$r = <STDIN>;
if($r < 0)
{
	print "0\n";
}
else
{
	print  "girth is " . $r * 2 * 3.141592654 . "\n";
}
