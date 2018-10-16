use strict;
use warnings;

my @list = qw(17 1000 04 1.50 3.14159 -10 1.5 4 2001 90210 666);
my $maxLen = 0;

foreach my $num(@list){
    my $len = length($num);
    if($maxLen < $len){
        $maxLen = $len
    }     
}

my @sorted = sort{$a <=> $b} @list;
foreach(@sorted){
    printf "%${maxLen}s\n", $_;
}