#!/usr/bin/perl

use strict;

my $pattern = "(?<name>\\b.*a\\b)(.{0,5})";
while(<>) {
    chomp;
    if (/$pattern/) {
        print "'name' contains '$+{name}' '$2'\n";
    } else {
        print "No match: |$_|\n";
    }
}