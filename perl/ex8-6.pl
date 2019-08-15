#!/usr/bin/perl

use strict;

while(<>) {
    chomp;
    if (/(\s*$)/) {
        print "blank line: $1 %\n";
    }
}