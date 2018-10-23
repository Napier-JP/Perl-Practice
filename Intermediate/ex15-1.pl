require "Animal.pm";
require "Horse.pm";
#require "Sheep.pm";
use strict;
use warnings;

my $tv_horse = Horse->named("Mr. Ed");
$tv_horse->set_name("Mister Ed");
$tv_horse->set_color("grey");
print $tv_horse->name, " is ", $tv_horse->color, "\n";
#print Sheep->name, " color ", Sheep->color, " goes ", Sheep->sound, "\n";
