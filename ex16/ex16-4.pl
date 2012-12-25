#! /usr/bin/perl
use strict;
use 5.014;

sub my_hup_handler{state $n;say "Caught HUP:",++$n}
sub my_usr1_handler{state $n;say 'Caught USR:',++$n}
sub my_usr2_handler {state $n;say "Caught USR:",++$n}
sub my_int_handler {say "Caught INI.Exiting.";exit}

say "i am $$";
foreach(qw(int hup usr1 usr2)){
	$SIG{uc $_} = "my_${_}_handler";
}
while(1){sleep 1};
