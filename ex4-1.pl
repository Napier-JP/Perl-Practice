#!perl
use strict;
use warnings;
use utf8;

sub total{
    my $sum = 0; #未定義にしたくない
    foreach(@_){
        $sum += $_; #デフォルト制御変数$_
    }
    return $sum;
}

my @fred = qw{1 3 5 7 9};
my $fred_total = &total(@fred);
print "The total of @fred is $fred_total\n"; #エスケープしないので@fredの中身が見える
my $user_total = &total(<STDIN>);
print "The total of those numbers is $user_total";