use strict;
use warnings;

open my $inputFH, "<", "ex10-resource.txt";
my @copyList = <$inputFH>;
foreach(@copyList){
    $_ =~ tr/[^(A-Za-z)]//cd;
}
my @sorted = sort{lc$a cmp lc$b} @copyList;

foreach(@sorted){
    print "$_\n";
}
