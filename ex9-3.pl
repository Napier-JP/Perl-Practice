#!/usr/bin/perl
use warnings;
use strict;

my $arg = $ARGV[0];
open my $input, "<", $arg;
open my $output, ">", "${arg}.out";

while(<$input>){
    s/fred/\0/ig;
    s/wilma/Fred/ig;
    s/\0/Wilma/ig;
    print $output $_;
}       
