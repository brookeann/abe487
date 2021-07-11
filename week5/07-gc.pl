#!/usr/bin/env perl
#file: 07-gc.pl
use strict;
use warnings;
if ((scalar @ARGV) == 0) {
    die "Please provide a sequence.\n";
}

#while (my $seq = <@nums>) {
for my $seq (@ARGV) {
    print "-------\n";
    print "Seq: ", $seq, "\n";
    my $len   = length($seq);
    my $numgc = $seq;
    $numgc =~ s/[aAtT]//g;
    $numgc = length($numgc);
    my $percgc = $numgc / $len * 100;
    print "Length: ", $len,   "\n";
    print "#GC: ",    $numgc, "\n";
    my $rperc = sprintf( "%.2f", $percgc );
    print "%GC: ", $rperc, "\n";
}
