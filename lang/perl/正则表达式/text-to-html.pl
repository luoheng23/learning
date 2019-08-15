#!/usr/bin/perl
undef $/;

$HostnameRegex = qr/[-a-z0-9]+(\.[-a-z0-9]+)*\.(com|edu|info)/i;

$text = <>;
$text =~ s/&/&amp;/g;
$text =~ s/</&lt;/g;
$text =~ s/>/&gt;/g;

$text =~ s/^\s*$/<p>/mg;

$text =~ s{
    \b
    (
        \w[-.\w]*
        \@
        $HostnameRegex
    )
    \b
}{<a href="mailto:$1">$1</a>}gix;

$text =~ s{
    \b
    (
        http:// $HostnameRegex \b
        (
            / [-a-z0-9_:\@&?=+,.!/~*'%\$]*
            (?<![].,?!])
        )
    )
}{<a href="$1">$1</a>}gix;

print $text;