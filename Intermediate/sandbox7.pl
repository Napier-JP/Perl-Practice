use strict;
use warnings;

sub skipper_greets{
    my $person = shift;
    print "Skipper: Hey there, $person!\n";
}

sub gilligan_greets{
    my $person = shift;
    print "Gilligan: Hi $person!\n";
}

sub prof_greets{
    my $person = shift;
    print "Prof: You must be $person.\n";
}

my %greets = (
    Gilligan => \&gilligan_greets,
    Skipper => \&skipper_greets,
    Prof => \&prof_greets,
);

for my $person (qw(Skipper Gilligan)){
    $greets{$person}->("Prof");
}
