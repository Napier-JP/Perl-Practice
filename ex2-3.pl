#!perl
use strict;
use warnings;
use utf8;

my $pi = atan2(1,1) * 4;
my $radius = <STDIN>;
chomp($radius); #あわせてchomp($radius = <STDIN>;でもよい)

if($radius < 0){
    print 0;
}else{
    print $radius * 2 * $pi;
}
