#!/usr/bin/env perl
#file: 01-cities.pl
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
my %hash = (
    Tucson => 'AZ',
    'Salt Lake City' => 'UT',
    Columbus => 'OH',
    Longueuil => 'QC',
    'St. Bruno' => 'QC',
    Montreal => 'QC',
);
say Dumper(\%hash);
my $i = 1;
foreach my $city (sort keys %hash){
    my $state = $hash{$city};
    say($i,": ",$city,", ",$state);
    $i++;
}

