#!/usr/bin/perl

use strict;

for my $key (sort keys %ENV) {
    print "$key:$ENV{$key}\n";
}