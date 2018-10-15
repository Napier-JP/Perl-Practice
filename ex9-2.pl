#!perl
use strict;
use warnings;
use utf8;

my $arg = $ARGV[0];
open my $input, "<", $arg;
open my $output, ">", "${arg}.out";

while(<$input>){
    s/fred/Larry/ig; #case-insensitive, global substitution
    print $output $_;
}
