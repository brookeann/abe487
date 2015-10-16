#!/usr/bin/env perl
#file: 02-fasta-hash.pl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
use autodie;
my $defaultFile = "Perl_V.genesAndSeq.txt";
my $f;
if (scalar(@ARGV) > 0) {
    my $inputFile = shift @ARGV;
    if (-e $inputFile) {
	open $f, "<", $inputFile;
    }
} 
else {
    open $f, "<", $defaultFile;
}
my %hash;
my @seq = split('>',join('',<$f>));
foreach my $l (@seq) {
    unless (length($l) == 0) {
    	my @al = split("\n",$l);
    	my $k = shift @al;
    	$hash{$k} = join('',@al);    
    }
}
foreach my $id (sort {length($hash{$a}) <=> length($hash{$b})} keys %hash) {
    print($id,": ", length($hash{$id}),"\n");
}
