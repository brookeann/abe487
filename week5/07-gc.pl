#!/usr/bin/env perl
#file: 07-gc.pl
use strict;
use warnings;
my @nums = @ARGV;
if ((scalar @nums) == 0) {
    print "Please provide a sequence.\n";
}
else {
    while (my $seq = <@nums>) {
   	print "-------\n";
	print "Seq: ", $seq, "\n";
	my $len = length($seq);
	my $numgc = $seq;	
	$numgc =~ s/[aAtT]//g;
	$numgc = length($numgc);	
  	my $percgc = $numgc/$len*100;	
	print "Length: ", $len, "\n";
	print "#GC: ",$numgc, "\n";
	my $rperc = sprintf( "%.2f", $percgc);
	print "%GC: ", $rperc, "\n";
    }
} 

