#!perl
use strict;
use warnings;
use utf8;

while (<>){
    if(m/\A[A-Z][a-z]+/){
        print $_;
    }
}