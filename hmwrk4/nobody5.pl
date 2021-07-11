#!/usr/bin/env perl
#file: nobody5.pl

use strict;
use warnings;
use autodie;
open my $f, '<', "nobody.txt";

my $lnum = 0;
while (my $line = <$f>) {
	my $inobody = index($line,"Nobody");
	my $isomebody = index($line,"somebody");
	$lnum++;	
	if ($inobody == -1) {
		print qq(Line $lnum: 'Nobody' not found. );
	}
	else {
		print qq(Line $lnum: 'Nobody' first appears at index $inobody. );
	} 	
	if ($isomebody == -1) {
		print qq('somebody' not found.\n);
	}
	else {	
		warn "somebody is here.";
		print qq('somebody' first appears at index $isomebody.\n);
	}
}

__END__

Only need to print /if/ target is found.
