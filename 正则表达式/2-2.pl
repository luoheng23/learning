#!/usr/bin/perl

print "Enter a temperature (e.g., 32F, 100C): ";
chomp(my $input = <STDIN>);

if ($input =~ m/^([-+]?[0-9]+(?:\.[0-9]*)?)\s*([CF])$/) {
    my $inputNum = $1;
    my $type = $2;
    my $celsius;
    my $fahrenheit;

    if ($type eq "C") {
        $celsius = $inputNum;
        $fahrenheit = ($celsius * 9 / 5) + 32;
    } else {
        $fahrenheit = $inputNum;
        $celsius = ($fahrenheit - 32) * 5 / 9;
    }

    printf "%.2f C is %.2f F\n", $celsius, $fahrenheit;
} else {
    print "Expecting a number followed by \"C\" or \"F\",\n";
    print "so I don't understand \"$input\".\n";
}