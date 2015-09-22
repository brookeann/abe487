#!/usr/bin/env perl
#file: order5.pl
use strict;
use warnings;
my $str1 = shift;
my $str2 = shift;
if (defined $str1 and defined $str2) {
	if ( (lc($str1) cmp lc($str2)) < 1 ) {
		print $str1, " ", $str2,  "\n";
	}
	else {
		print $str2, " ", $str1, "\n";
	}
}
else {
	print "Please enter two strings.\n";
}
