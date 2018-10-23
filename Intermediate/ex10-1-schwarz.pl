use strict;
use warnings;

chdir "../";

my @sorted =
    map $_->[0], sort{$a->[1] <=> $b->[1]} #抽出し比較
    map [$_, -s $_], glob "*"; #構築

foreach(@sorted){
    print "$_\n";
}
