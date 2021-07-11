#!/usr/bin/env perl
#file: count4.pl
#
use strict;
use warnings;
use autodie;
open my $f, '<', "fastq.txt";

my $linect = 0;
my $charct = 0;
while (my $line = <$f>) {
    #chomp($line);
    $linect++;
    $charct = $charct + length($line);
}

print qq(Line total: $linect\n);
print qq(Character total: $charct\n);

if ($charct != 0) {
    my $mean = $charct / $linect;
    print qq(Average line length: $mean\n);
}

__END__

Definitely "use autodie."

l. 12: chomp removes a char that should be counted.  You should have the 
same stats as wc.

 [gila@~/work/students/brookeann/hmwrk4]$ perl count4.pl
 Line total: 120
 Character total: 7800
 Average line length: 65

 [gila@~/work/students/brookeann/hmwrk4]$ wc fastq.txt
      120     150    7920 fastq.txt

With that gone:

 [gila@~/work/students/brookeann/hmwrk4]$ perl count4.pl
 Line total: 120
 Character total: 7920
 Average line length: 66
