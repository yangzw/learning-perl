#! /usr/bin/perl
use strict;

open STDOUT,'>','ls.out' or die "can't write to ls.out:$!";
open STDERR,'>','ls.err' or die "can't write to ls.err:$!";
chdir '/' or die "can't chdir to /:$!";
exec 'ls','-l' or die "can't exec ls:$!";
