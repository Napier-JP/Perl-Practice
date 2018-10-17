use strict;
use warnings;
use 5.010001;

sub divisors{
    my $number = shift;
    my @divisors = ();
    foreach my $divisor(2..$number/2){
        push @divisors, $divisor unless $number % $divisor;
    }
    return @divisors;
}

given($ARGV[0]){
    my @divList = &divisors($_);
    my @emptyList = ();
    when(@divList ~~ @emptyList){print "$_ is prime number"}
    default{print "$_ is divisible by @divList"}
}