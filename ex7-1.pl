#!perl
use strict;
use warnings;
use utf8;

while (<>){
    if(m/fred/){
        print $_;
    }
}