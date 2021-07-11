#!/usr/bin/env perl
#file: 05-string-sort.pl
use strict;
use warnings;
my @nums = @ARGV;
if ((scalar @nums) == 0) {
    die "Please provide a list of sequences.\n";
}

print "sorted = ",  join(", ",(sort @nums)), "\n";
print "reverse = ",  join(", ",(sort {$b cmp $a} @nums)), "\n";
