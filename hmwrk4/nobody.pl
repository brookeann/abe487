#!/usr/bin/env perl
#file: count4.pl
use strict;
use warnings;
#use autodie;
open my $f, '<', "fastq.txt" or die "Could not find file: $!\n";
my $linect = 0;
my $charct = 0;
while (my $line = <$f>) {
	chomp($line);	
	$linect++;
	$charct = $charct + length($line);
}
print qq(Line total: $linect\n);
print qq(Character total: $charct\n);
if ($charct != 0) {
	my $mean = $charct/$linect;
	print qq(Average line length: $mean\n);
}		
