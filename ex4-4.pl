#!perl
use strict;
use warnings;
use utf8;
use feature "state"; #ないとstateが使えないとは…

sub greet{
    state $lastMetName = ""; #永続的なプライベート変数
    my $currentName = shift(@_);

    if($lastMetName){
        print("Hi $currentName! $lastMetName is also here!\n");
    }else{
        print("Hi $currentName! You are the first one here!\n");
    }
    $lastMetName = $currentName;
}

greet("Fred");
greet("Barney");