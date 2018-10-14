#!perl
use strict;
use warnings;
use utf8;

foreach my $envKey (sort keys(%ENV)){
    print "$envKey $ENV{$envKey}\n\n";
}

#2カラムで表示 is 何のために