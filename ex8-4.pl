#!perl
use strict;
use warnings;
use utf8;

while(<>){
    chomp($_);
    if(m/\b(?<word>\w*a)\b/){
        print "Matched: 'word' contains '$+{word}'\n";
    }else{
        print "No match: |$_|\n";
    }
}