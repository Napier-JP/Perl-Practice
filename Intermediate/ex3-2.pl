use strict;
use warnings;

eval{
    chomp(my $input = <STDIN>);
    my @match = grep {/${input}/} glob("*");
    print map{"$_\n"} @match;
};
print "wrong input! $@" if $@;
