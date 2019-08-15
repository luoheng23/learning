
@name = qw/fred betty barney dino wilma pebbles bamm-bamm/;
chomp(@index = <STDIN>);

foreach (@index) {
    print @name[$_-1], "\n";
}