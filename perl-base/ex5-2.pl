#!/usr/bin/perl

use strict;

print "input word per line:\n";
my @lines;
chomp(@lines=<>);
print "0123456789" x 7, "\n";
for (@lines) {
    printf "%20s\n", $_;
}


