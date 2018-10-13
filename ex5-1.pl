#!perl
use strict;
use warnings;
use utf8;

my @lines = reverse(<>);
#$lineとするとスカラーなので文字の順番まで逆になるようだ

print @lines;