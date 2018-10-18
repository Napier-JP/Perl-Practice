use strict;
use warnings;

my %passenger_1={
    name => "Ginger",
    age => 22,
    occupation => "Movie Star",
    real_age => 35,
    hat => undef,
    favorite_food => "dummy",
};

my %passenger_2={
    name => "Mary Ann",
    age => 19,
    hat => "bonnet",
    favorite_food => "corn",
    real_age => "dummy",
    occupation => "dummy",
};

my @passengers = (\%passenger_1, \%passenger_2);
