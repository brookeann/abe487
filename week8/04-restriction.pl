#!/usr/bin/env perl
#file: 04-restriction.pl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
use autodie;

my $in;
if (scalar(@ARGV)==0) {
    die "Please provide a sequence or file.\n";
}

$in = shift @ARGV;
if (-e $in) {
    open my $fh, "<", $in;
    $in = join('',<$fh>);
}

$in =~ s/\n//g;
$in =~ s/([AG])(AATT[CT])/$1^$2/g;
say $in; 

