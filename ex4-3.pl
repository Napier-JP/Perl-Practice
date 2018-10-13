#!perl
use strict;
use warnings;
use utf8;

sub total{
    my $sum = 0;
    foreach(@_){
        $sum += $_
    }
    return $sum;
}

sub above_average{
    my $length = @_; #スカラー変数に代入するとlenが出てくる
    my $average = &total(@_)/$length;
    my @result = ();
    foreach my $num(@_){
        if($num > $average){
            push(@result, $num);
        }
    }
    return @result;
}

print &above_average(1..10); #678910
print "\n";

my @fred = &above_average(1..10);
print "@fred\n"; #6 7 8 9 10

print &above_average(100, 1..10); #100