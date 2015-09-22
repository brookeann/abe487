#!/usr/bin/env perl
#file: order4.pl
use strict;
use warnings;
my $str1 = shift;
my $str2 = shift;
if (defined $str1 and defined $str2) {
	if ( (lc($str1) cmp lc($str2)) < 1 ) {
		print "right order\n";
	}
	else {
		print "wrong order\n";
	}
}
else {
	print "Please enter two strings.\n";
}
