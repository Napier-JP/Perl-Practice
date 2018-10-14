#!perl
use strict;
use warnings;
use utf8;

while (<>){
    if(m/(.)\g{1}/){
        print $_;
    }
}