use strict;
use warnings;

my @smallFiles = grep{-s $_ < 1000} @ARGV;
print map{" $_\n"} @smallFiles;
