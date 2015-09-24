#!/usr/bin/env perl
#file: divide1.pl
use strict;
use warnings;
my $num1 = shift;
my $num2 = shift;
if (!defined $num1 or !defined $num2){
	die "Need two positive numbers to divide.\n";
}
if ($num1 <=0 or $num2 <= 0 ){
	die "Numbers must be positive.\n";	
}
print $num1/$num2, "\n";
