#!/usr/bin/env perl
#file: 04-array-ops.pl
use strict;
use warnings;
my @nums = (101,2,15,22,95,33,2,27,72,15,52);
print "array = ",  join(", ",@nums), "\n";
my $popnum = pop @nums;
print "popped = ", $popnum, ", array = ",  join(", ", @nums), "\n";
my $shiftnum = shift @nums;
print "shifted = ", $shiftnum, ", array = ", join(", ", @nums), "\n";
push @nums, 12;    
print "after push, array = ", join(", ", @nums), "\n";
unshift @nums, 4;
print "after unshift, array = ", join(", ", @nums),"\n";

