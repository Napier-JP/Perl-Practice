use strict;
use warnings;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014}};

while(my ($key, $value) = each(%modules)){
	print "$key, $value\n"
}
