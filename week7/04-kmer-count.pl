#!/usr/bin/env perl
#file: 04-kmer-count.pl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
if (!defined(@ARGV)) {
    say "Please provide a sequence.";
    exit;
}
my $input = shift @ARGV;
my $k = 3;
if (scalar(@ARGV) > 0){
    $k = shift @ARGV;
}
my $sequence;
if (-e $input) {
    # get sequences
    open my $f, '<', $input;
    $sequence = uc(join("",<$f>));
    $sequence =~ s/[^A-Z0-9]//g; 
    if (length($sequence) < 1) {
	say "Zero-length sequence.";
	exit;
    }
}
else {
    $sequence = uc($input);
}
if (length($sequence) < $k) {
    say "Cannot get any ", $k, " mers from a sequence of length ",length($sequence);
    exit;
}
my %freqkmers;
for (my $i = 0; $i <= length($sequence) - $k; $i++) {
    my $kmer = substr($sequence,$i,$k);
	if (exists $freqkmers{$kmer}) {
	    $freqkmers{$kmer}++;
	}
	else {
	    $freqkmers{$kmer} = 1;
	}
}
## instructions asked for number of possible k-mers but
## sample didn't show - 4^k?
## why doesn't the AAA example show most abundant? 
### under what condition do we suppress the most abundant print?
printf("%-15s %10s\n", "Sequence length", length($sequence));
printf("%-15s %10s\n", "Mer size", $k);
printf("%-15s %10s\n", "Number of kmers", length($sequence)-$k+1);
printf("%-15s %10s\n", "Unique kmers", scalar(keys %freqkmers));
printf("%-15s %10s\n", "Num. singletons", scalar(grep {$freqkmers{$_} == 1} keys %freqkmers));

if (scalar(grep {$freqkmers{$_} > 1} keys %freqkmers) == 0) {
    exit;
}

say "Most abundant";
my $n = 10;
foreach my $kmer (sort {$freqkmers{$b} <=> $freqkmers{$a} || $a cmp $b} keys %freqkmers) {
    my $val = $freqkmers{$kmer};
    if ($n == 0 || $val == 1) {
    	exit;
    }
    say $kmer, ": ", $freqkmers{$kmer};
    $n--; 
} 
 
 
 
