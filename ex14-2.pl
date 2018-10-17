use strict;
use warnings;

my %last_name = qw{
    fred flintstone 
    Wilma Flintstone 
    Barney Rubble 
    betty rubble 
    Bamm-Bamm Rubble 
    PEBBLES FLINTSTONE};
#つまり fred => flintstone, Wilma => Flintstone, ...

my @sorted = sort{"\L$last_name{$a}" cmp "\L$last_name{$b}" || "\L$a" cmp "\L$b"} keys last_name;

foreach(@sorted){
    print " $last_name{$_} $_\n";
}