#!/usr/bin/env perl
#file: 05-string-sort.pl
use strict;
use warnings;
my @nums = @ARGV;
if ((scalar @nums) == 0) {
    print "Please provide a list of sequences.\n";
}
else {
    print "sorted = ",  join(", ",(sort @nums)), "\n";
    print "reverse = ",  join(", ",(sort {$b cmp $a} @nums)), "\n";
}

