#!/usr/bin/perl

use strict;

print "input word per line:\n";
chomp(my @lines=<>);
print "input width: ";
chomp(my $width=<STDIN>);
print "0123456789" x ($width / 10 + 3), "\n";
for (@lines) {
    printf "%${width}s\n", $_;
}


