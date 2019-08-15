#!/usr/bin/perl

use strict;

my $pattern = "(\\b.*a\\b)";
while(<>) {
    chomp;
    if (/$pattern/) {
        print "\$1 contains '$1'\n";
    } else {
        print "No match: |$_|\n";
    }
}