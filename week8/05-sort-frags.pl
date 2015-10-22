#!/usr/bin/env perl
#file: 05-sort-frags
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
use autodie;

my $in = <STDIN>;
chomp $in;
my @frags = split(/\^/,$in);
foreach my $f (sort {length($a) <=> length($b)} @frags) {
    say $f;
}
