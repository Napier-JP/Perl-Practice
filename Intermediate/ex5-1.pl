use strict;
use warnings;

my %passenger_1 = (
    name => "Ginger",
    age => 22,
    occupation => "Movie Star",
    real_age => 35,
    hat => undef,
);

my %passenger_2 = (  #ハッシュへの代入は()で、リファレンスは{}。{}をハッシュの文脈で使うのは$someHash{"someKey"}
    name => "Mary Ann",
    age => 19,
    hat => "bonnet",
    favorite_food => "corn",
);

my @passengers = (\%passenger_1, \%passenger_2);
