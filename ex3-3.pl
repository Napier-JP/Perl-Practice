#!perl
use strict;
use warnings;
use utf8;

my @input = <STDIN>;
my @sortedInput = sort(@input);

print @sortedInput; #変数なしにprint sort(<STDIN>)でもいける