#!/usr/bin/perl

use strict;

my $pattern = "";
while(<>) {
    chomp;
    if (/$pattern/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}