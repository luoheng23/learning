#!/usr/bin/perl

$filename = "file/string.pl";

$filename =~ s{^.*/}{};
print $filename;