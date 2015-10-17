#!/usr/bin/env perl
#file: 03-common-words.pl 
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
use autodie;
my ($input1, $input2);
my ($f1, $f2);
if (scalar(@ARGV) == 2) {
    $input1 = shift @ARGV;
    $input2 = shift @ARGV;
    if (-e $input1) {
	open $f1, "<", $input1;
    }
    if (-e $input2) {
	open $f2, "<", $input2;
    }
} 
else {
    die "Please provide two files.\n";
}
my @wrds1 = split(" ",join(" ",<$f1>));
my @wrds2 = split(" ",join(" ",<$f2>));


for my $w (@wrds1) {
    $w = lc($w);
    $w =~ s/[^A-Za-z0-9]//g;
}
for my $w (@wrds2) {
    $w = lc($w);
    $w =~ s/[^A-Za-z0-9]//g;
}

my %words1 = map {$_ => 1 } @wrds1;
my %words2 = map {$_ => 1 } @wrds2;


my $count = 0;
my @common;
foreach my $w (keys %words1) {
    if (exists $words2{$w}) {
	$count++;
	push(@common,$w);
    }
}

say(join("\n",sort {$a cmp $b} @common));
say "Found ",$count, " words in common.";


