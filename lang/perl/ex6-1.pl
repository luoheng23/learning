#!/usr/bin/perl

use strict;

my %name = (
    "fred" => "flintstone",
    "barney" => "rubble",
    "wilma" => "flintstone",
);

print "input your first name (per name one line):\n";
chomp(my @names = <>);
for (@names) {
    print "You name: $_ $name{$_}\n";
}