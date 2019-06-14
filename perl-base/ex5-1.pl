#!/usr/bin/perl

use strict;

for (reverse @ARGV) {
    open FILE, "<", $_;
    for (reverse <FILE>) {
        print;
    }
}