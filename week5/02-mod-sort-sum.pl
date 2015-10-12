#!/usr/bin/env perl
#file: 02-mod-sort-sum.pl
use strict;
use warnings;
my @nums = @ARGV;
if ((scalar @nums) == 0) {
    die "Please provide a list of numbers.\n";
}

my $evens = 0;
my $odds = 0;
#while ( my $n = <@nums> ) {
for my $n (@nums) {
    if ( $n % 2 == 0 ) {
        $evens += $n;
    }
    else {
        $odds += $n;
    }
}
print "sum evens = ", $evens, "\n";
print "sum odds = ", $odds, "\n";
