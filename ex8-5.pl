#!perl
use strict;
use warnings;
use utf8;

while(<>){
    chomp($_);
    if(m/\b(?<word>\w*a)\b(?<after>.{0,5})/){
        print "Matched: 'word' contains '$+{word}'\n";
        print "'after' contains '$+{after}'\n";
    }else{
        print "No match: |$_|\n";
    }
}