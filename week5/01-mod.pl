#!/usr/bin/env perl
#file: 01-mod.pl
use strict;
use warnings;
my @nums = @ARGV;

if ((scalar @nums) == 0) {
    die "Please provide a list of numbers.\n";
}

my @evens;
#while ( my $n = <@nums> ) {

for my $n (@nums) {
    if ( $n % 2 == 0 ) {
        push @evens, $n;
    }
}
print "evens = ", join(", ",@evens), "\n";

__END__

Better to die when conditions not meet as this 1) stops execution and
2) prints errors to STDERR.

Be sure to indent code properly inside control structures.

Use a "for" loop over an array.  "while" is for when you need to execute
while some condition is true like reading a file handle.
