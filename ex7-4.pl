#!perl
use strict;
use warnings;
use utf8;

while (<>){
    if(m/^[A-Z][a-z]+/){
        print $_;
    }
}