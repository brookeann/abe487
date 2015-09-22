#!/usr/bin/env perl
#file: percent9.pl
use strict;
use warnings;
my $num1 = shift;
my $num2 = shift;
if ( defined $num1 and defined $num2 ) {
	if ( $num1 =~ /^-*[0-9,.E]+$/ and $num2  =~ /^-*[0-9,.E]+$/){
		if ($num1 + $num2 == 0) {
			print "Enter two numeric values whose sum is not zero.\n";}
		else {		
			printf "%.2f %%\n", 100 * $num1 / ($num2 + $num1);
		}
	}
	else {
		print "Enter two numeric values.\n";
	}
}
else {
	print "Enter two numeric values.\n"; 	
}
