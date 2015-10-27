#!/usr/bin/env perl
#file: get_core.pl;
use strict;
use warnings;
use Data::Dumper;
use feature 'say';
my %krebbs1;
my %krebbs2;
my %krebbs3;
my %krebbs4;
open my $f, '<', 'uproc07.out';
foreach my $l (<$f>) {
    my @line = split(',',$l);
    my $k = shift @line;
    my $v = shift @line;
    if ($v >= 50) {    
	$krebbs1{$k} = $v; 	
    }
}
open $f, '<', 'uproc40.out';
foreach my $l (<$f>) {
    my @line = split(',',$l);
    my $k = shift @line;
    my $v = shift @line;
    if ($v >= 50) {
	$krebbs2{$k} = $v;
    }
}
open $f, '<', 'uproc55.out';
foreach my $l (<$f>) {
    my @line = split(',',$l);
    my $k = shift @line;
    my $v = shift @line;
    if ($v >= 50) {
	$krebbs3{$k} = $v;
    }
}
open $f, '<', 'uproc30.out';
foreach my $l (<$f>) {
    my @line = split(',',$l);
    my $k = shift @line;
    my $v = shift @line;
    if ($v >= 50) {
	$krebbs4{$k} = $v;
    }
}
my @core;
foreach my $kr (keys %krebbs1) {
    if (exists $krebbs2{$kr}) {
	if (exists $krebbs3{$kr} ) {
	    if (exists $krebbs4{$kr} ) {
		push @core, $kr;
	    }
	}
    }
}
open(my $wh, '>', 'core.out');
print $wh join("\n",@core);
close $wh;


my %allcore;
my @vars;
foreach my $kre (@core) {
    $allcore{$kre} = 1;
}
my @allkeys = keys %krebbs1;
push(@allkeys,keys(%krebbs2));
push(@allkeys,keys(%krebbs3));
push(@allkeys,keys(%krebbs4));

foreach my $k2 (@allkeys) {
    if (!(exists $allcore{$k2})){
	push @vars, $k2;
    }
}
open(my $wh2, ">", 'variable.out');
print $wh2 join("\n",@vars);
close $wh2;


