#!/usr/bin/env perl
#file: addmod.pl
use strict;
use warnings;
my $num1 = shift;
my $num2 = shift;
if (defined $num1 and defined $num2) {
	print $num1 + $num2,"\n";
}
else {
	print "Please provide two numbers.\n";
}
