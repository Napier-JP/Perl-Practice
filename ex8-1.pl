#!perl
use strict;
use warnings;
use utf8;

while(<>){
    chomp($_);
    if(m/match/){
        print "Matched: |$`<$&>$'|\n";
    }else{
        print "No match: |$_|\n";
    }
}