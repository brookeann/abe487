#!/usr/bin/env perl
#file: add3.pl
use strict;
use warnings;
my $num1 = shift;
my $num2 = shift;
if (defined $num1 and defined $num2) {
	if ($num1 >= 0 and $num2 >= 0) {
		print $num1 + $num2,"\n";
	}
	else {
		print "Please provide two non-negative numbers.\n";
	}
}
else {
	print "Please provide two non-negative numbers.\n";
}

