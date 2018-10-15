#!perl
use strict;
use warnings;
use utf8;

while(<>){
    chomp($_);
    if(m/\b(\w*a)\b/){
        print "Matched: \$1 contains '$1'\n";
    }else{
        print "No match: |$_|\n";
    }
}