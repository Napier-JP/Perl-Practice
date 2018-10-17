use strict;
use warnings;

my @match = ();
my $position = -1;

chomp(my $givenString = <STDIN>);
chomp(my $search = <STDIN>);

while(1){
    $position = index($givenString, $search, $position + 1);
    if($position == -1){
        last;
    }
    push @match, $position;
}

print "@match"