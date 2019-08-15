#!/usr/bin/env perl

$pi = 3.141592654;
chomp($r = <STDIN>);

if ($r < 0) {
    $r = 0;
}
$c = 2 * $pi * $r;

print $c;

