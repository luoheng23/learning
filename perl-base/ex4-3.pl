
use 5.010;

sub greet {
    state @name;
    my $person = shift @_;
    if (@name) {
        print "Hi $person! I've seen: @name\n"
    } else {
        print "Hi $person! You are the first one here!\n";
    }
    push @name, $person;
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");