#!/usr/bin/perl

use strict;

my $pattern = "a\\b";
while(<>) {
    chomp;
    if (/$pattern/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}