use strict;
use warnings;

chdir "../"; #ホームディレクトリへ
my @sorted = sort{-s $a <=> -s $b} glob "*";

foreach(@sorted){
    my $size = (-s $_);
    print "$a_ ${size}\n";
}
