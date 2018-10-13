#!perl
use strict;
use warnings;
use utf8;
use feature "state";

sub greet{
    state @metNamesList = ();
    my $currentName = shift(@_);

    if(@metNamesList){
        print("Hi $currentName! I've seen: @metNamesList\n");
    }else{
        print("Hi $currentName! You are the first one here!\n");
    }
    push(@metNamesList, $currentName);
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");