use strict;
use warnings;

my @day = qw(ark dip wap sen pop sep kir);
my @month = qw(diz pod bod rod sip wax lin sen kun fiz nap dep);

sub number_to_day_name{
    my $arg = shift @_;
    return $day[$arg - 1];
}

sub number_to_month_name{
    my $arg = shift @_;
    return $month[$arg - 1];
}
