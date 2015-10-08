#!/usr/bin/env perl
#file: 08-snps.pl
use strict;
use warnings;
if ((scalar @ARGV) != 2) {
    print "Please provide two sequences.\n";
    exit;
}
my $seq1 = shift; 
my $seq2 = shift;
if (length($seq1) - length($seq2) != 0) {
    print "Please ensure the sequences are the same length.\n";
    exit;
} 
my @seq1 = split //, $seq1;
my @seq2 = split //, $seq2;
my $numsnps = 0;
for (my $i = 0; $i < length($seq1); $i++) {
    my $c1 = shift @seq1;
    my $c2 = shift @seq2;
    if ((uc($c1) cmp uc($c2)) != 0) {
	print "Pos ", $i+1, ": ", uc($c1)," => ",uc($c2),"\n";
	$numsnps++;
    }
}
if ($numsnps == 1) {
    print "Found 1 SNP.\n";
}   	
else {
    print "Found ", $numsnps, " SNPs.\n";
}   	
