#!/usr/bin/perl

use strict;

my $pattern = "match";
while(<>) {
    chomp;
    if (/$pattern/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}