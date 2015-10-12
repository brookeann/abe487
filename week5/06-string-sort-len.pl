#!/usr/bin/env perl
#file: 06-string-sort.pl
use strict;
use warnings;
my @nums = @ARGV;
if ((scalar @nums) == 0) {
    die "Please provide a list of sequences.\n";
}

print "sorted = ",  join(", ",(sort {length($a) <=> length($b)} @nums)), "\n";
print "reverse = ",  join(", ",(sort {length($b) <=> length($a)} @nums)), "\n";
