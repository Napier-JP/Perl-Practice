#!/usr/local/bin/perl
use strict;
use warnings;
use DateTime; #cpan install fails

my $dt = DateTime->new(
	year => $ARGV[0],
	month => $ARGV[1],
	day => $ARGV[2],
);

my $nowDt = DateTime->now(time_zone => "local");

my $duration = $nowDt - $dt;
my @units = $duration->in_units( qw(years months days));

printf "%d years, %d months, and %d days\n";
