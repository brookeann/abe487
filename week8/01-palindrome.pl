#!/usr/bin/env perl
#file: 01-cities.pl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';

if (scalar(@ARGV) == 0) {
    die "Please provide a word or phrase.\n";
}
my $str1 = lc(join('',@ARGV));

$str1 =~ s/\W//g;
if ($str1 =~ /^((.)(?1)\2|.?)$/) {
    say "Yes";
    exit;
}

say "No";
