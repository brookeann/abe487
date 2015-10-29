#!/usr/bin/env perl

use strict;
use warnings;
use autodie;
use feature 'say';
use Getopt::Long;
use Pod::Usage;

main();

# --------------------------------------------------
sub main {
    my %args = get_args();
    if ($args{'help'} || $args{'man_page'}) {
	pod2usage({
		-exitval => 0,
		-verbose => $args{'man_page'} ? 2 : 1
		});
    }; 
    my $program = $args{'program'} or pod2usage("no program");
    my $arguments = $args{'argument'} or pod2usage("no argument");
    if ($program eq 'hello') {
	hello($arguments);
    }
    elsif ($program eq 'rc') {
	rc($arguments);
    }
}
# --------------------------------------------------
sub get_args {
    my %args;
    GetOptions(
	    \%args,
	    'program=s',
	    'argument=s',
	    'help',
	    'man',
	    ) or pod2usage(2);

    return %args;
}
sub hello {
    my $name = shift @_;
    say "Hello, ",$name;	
}

sub rc {
    my $str = shift @_;
    $str =~ tr /atcgATCG/tagcTAGC/;
    $str = reverse($str);
    say $str;
}
__END__

# --------------------------------------------------

=pod

=head1 NAME

01-subs.pl - subroutine practice

=head1 SYNOPSIS

01-subs.pl -p hello -a argument

01-subs.pl -p rc -a nucleotides  

Options:

--program The program you want to run

--argument The argument to the program

--help   Show brief help and exit

--man    Show full documentation

=head1 DESCRIPTION

Describe what the script does, what input it expects, what output it
creates, etc.

=head1 SEE ALSO

perl.

=head1 AUTHOR

Rabe E<lt>brooker@email.arizona.eduE<gt>.

=head1 COPYRIGHT

Copyright (c) 2015 brooker

This module is free software; you can redistribute it and/or
modify it under the terms of the GPL (either version 1, or at
	your option, any later version) or the Artistic License 2.0.
Refer to LICENSE for the full license text and to DISCLAIMER for
additional warranty disclaimers.

=cu
