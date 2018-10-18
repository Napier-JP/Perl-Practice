use strict;
use warnings;

my @skipper   = qw(blue_shirt hat jacket preserver sunscreen);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio);
my @gilligan  = qw(red_shirt hat lucky_socks water_bottle);

my %all = (
    Gilligan  => \@gilligan,   # @gilliganとするとコピーしてくることになる 
    Skipper   => \@skipper, 
    Professor => \@professor,
    );

check_items_for_all(\%all);

sub check_required_items{  #引数を$who, $itemsとして取り込む
    my $who = shift;
    my $items = shift;
    
    my %whose_items = map{$_, 1} @$items;

    my @required = qw(preserver sunscreen water_bottle jacket);
    my @missing = ();

    for my $item(@required){
	unless($whose_items{$item}){
	    print "$who is missing $item.\n";
	    push @missing, $item;
	}
    }
    if(@missing){
	print "Adding @missing to @$items for $who.\n";
	push @$items, @missing;
    }
}
	
sub check_items_for_all { # \%allが引数として渡される
    my $givenall = shift;  # $allには%allへのrefが入る
    for my $person(sort keys %all){  # この%allはグローバル
	check_required_items($person, $givenall->{$person});
    }
}
