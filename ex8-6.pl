#!perl
use strict;
use warnings;
use utf8;

while(<>){
    chomp($_);
    if(m/\s\z/){
        print "'$_'";
    }
}