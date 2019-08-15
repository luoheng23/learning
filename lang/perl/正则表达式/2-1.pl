#!/usr/bin/perl

print "Enter a temperature in Celsius:\n";
chomp(my $celsius = <STDIN>);

if ($celsius =~ m/^[-+]?[0-9]+(\.[0-9]*)?$/) {
    my $fahrenheit = ($celsius * 9 / 5) + 32;
    print "$celsius C is $fahrenheit F\n";
} else {
    print "Expecting a number, so I don't understand \"$celsius\".\n";
}
