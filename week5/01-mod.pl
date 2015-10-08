#!/usr/bin/env perl
#file: 01-mod.pl
use strict;
use warnings;
my @nums = @ARGV;
if ((scalar @nums) == 0) {
    print "Please provide a list of numbers.\n";
}
else {
    my @evens;
    while (my $n = <@nums>) {
        if ($n % 2 == 0) {
	    push @evens, $n;
	}
    }
    print "evens = ", join(", ",@evens), "\n";
}
