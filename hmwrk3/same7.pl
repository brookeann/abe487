#!/usr/bin/env perl
#file: same7.pl
use strict;
use warnings;
print "Enter a string: ";
my $str1 = <STDIN>;
print "Enter another string: ";
my $str2 = <STDIN>;
if ( (lc($str1) cmp lc($str2)) == 0 ) {
		print "same\n";
}
else {
	print "different\n";
}
