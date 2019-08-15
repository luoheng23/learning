#!/usr/bin/perl

use strict;

my $file = "ex6-2.word";
open FILE, "<", $file;
my %count;
while(<FILE>) {
    chomp;
    $count{$_}++;
}
for my $key (sort keys %count) {
    print "$key: $count{$key}\n";
}