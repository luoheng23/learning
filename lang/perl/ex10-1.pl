#!/usr/bin/perl

use strict;

my $goal = int(1 + rand 100);
while ($goal != (my $guess)) {
    print("input your guess: ");
    chomp($guess=<STDIN>);
    last if $guess eq "quit" || $guess eq "exit";
    if ($guess == $goal) {
        print "You guess it!\n";
        last;
    }
    print "Too high\n" if $guess > $goal;
    print "Too low\n" if $guess < $goal;

}