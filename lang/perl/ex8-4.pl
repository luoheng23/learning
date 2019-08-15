#!/usr/bin/perl

use strict;

my $pattern = "(?<name>\\b.*a\\b)";
while(<>) {
    chomp;
    if (/$pattern/) {
        print "'name' contains '$+{name}'\n";
    } else {
        print "No match: |$_|\n";
    }
}