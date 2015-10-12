#!/usr/bin/env perl
#file: 03-sort.pl;
use strict;
use warnings;
my @nums = @ARGV;
if ((scalar @nums) == 0) {
    die "Please provide a list of numbers.\n";
}

print "default sort = ",  join(", ",(sort @nums)), "\n";
print "numerical sort = ",  join(", ",(sort {$a<=>$b} @nums)), "\n";
print "reverse numerical sort = ",  join(", ",(sort {$b<=>$a} @nums)), "\n";
