#!perl
use strict;
use warnings;
use utf8;

while (<>){
    if(m/[fF]red/){
        print $_;
    }
}