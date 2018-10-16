use strict;
use warnings;

my %last_name = qw{fred flintstone Wilma Flintstone Barney Rubble betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE};
#つまり fred => flintstone, Wilma => Flintstone, ...

sub by_FamilyName{
    lc($last_name{$a}) cmp lc($last_name{$b})
        or
    lc($a) cmp lc($b)
}

my %sorted = sort by_FamilyName %last_name;

foreach my $key(keys(%sorted)){
    print "$key %sorted{$key}\n";
}