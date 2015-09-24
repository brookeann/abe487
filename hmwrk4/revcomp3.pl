#!/usr/bin/env perl
#file: revcomp3.pl
use strict;
use warnings;
#use autodie;
open my $f, '<', "fasta.txt" or die "Could not find file: $!\n";
while (my $l = <$f>) {
	chomp($l);
	if ($l =~ /^\>/) {
		print $l, qq(: reverse complement.\n);
	}
	else {
 		$l =~ tr /atcgATCG/tagcTAGC/;
		$l = reverse($l);
		print $l, qq(\n);
	}	
}
