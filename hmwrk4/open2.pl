#!/usr/bin/env perl
#file: open2.pl

use strict;
use warnings;
use autodie;

open my $f, '<', "open2in.txt";
open my $w, '>', "open2out.txt";

#yes, I hardcoded this filename
while (my $l = <$f>) {
	chomp($l);
	#print uc($l);	
	print $w uc($l), "\n";
}

__END__

You keep commenting out "use autodie." 

Better to just "print" without a filehandle and let the user redirect.

A minimal Perl implementation:

 [gila@~/work/students/brookeann/hmwrk4]$ perl -e 'while(<>){print uc}' nobody.txt
 NOBODY BY SHEL SILVERSTEIN

 NOBODY LOVES ME,
 NOBODY CARES,
 NOBODY PICKS ME PEACHES AND PEARS.
 NOBODY OFFERS ME CANDY AND COKES,
 NOBODY LISTENS AND LAUGHS AT ME JOKES.
 NOBODY HELPS WHEN I GET IN A FIGHT,
 NOBODY DOES ALL MY HOMEWORK AT NIGHT.
 NOBODY MISSES ME,
 NOBODY CRIES,
 NOBODY THINKS I'M A WONDERFUL GUY.
 SO IF YOU ASK ME WHO'S MY BEST FRIEND, IN A WHIZ,
 I'LL STAND UP AND TELL YOU THAT NOBODY IS.
 BUT YESTERDAY NIGHT I GOT QUITE A SCARE,
 I WOKE UP AND NOBODY JUST WASN'T THERE.
 I CALLED OUT AND REACHED OUT FOR NOBODY'S HAND,
 IN THE DARKNESS WHERE NOBODY USUALLY STANDS.
 THEN I POKED THROUGH THE HOUSE, IN EACH CRANNY AND NOOK,
 BUT I FOUND SOMEBODY EACH PLACE THAT I LOOKED.
 I SEARCHED TILL I'M TIRED, AND NOW WITH THE DAWN,
 THERE'S NO DOUBT ABOUT IT-
 NOBODY'S GONE!
