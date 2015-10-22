#!/usr/bin/env perl
#file: 03-fasta.pl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
use autodie;

my $fh;
if (scalar(@ARGV)==0) {
    say "Please provide a FASTA file.";
    exit;
}
else {
    open $fh, "<", @ARGV;;
}
my $count = 0;
foreach my $l (<$fh>) {
    if ($l =~ />/) {
	$l =~ s/>//g;
	$count++;
	say($count,": ",$l);
    }
}
if ($count == 1) {
    say "Found 1 sequence.";
}
else {
    say "Found ",$count," sequences.";
}

