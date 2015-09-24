#!/usr/bin/env perl
#file: open2.pl
use strict;
use warnings;
#use autodie;
open my $f, '<', "open2in.txt" or die "Could not find file: $!\n";
open my $w, '>', "open2out.txt";
#yes, I hardcoded this filename
while (my $l = <$f>) {
	chomp($l);
	#print uc($l);	
	print $w uc($l), "\n";
}
