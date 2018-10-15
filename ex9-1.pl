#!perl
use strict;
use warnings;
use utf8;

my $what = "fred|barney";
while(<>){
    chomp($_);

    if(m/(?<match> ($what){3})/x){
        print "$`<$+{match}>$'\n";
    }
}
