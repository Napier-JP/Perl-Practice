use strict;
use warnings;
use 5.010001;

for(1..105){
    my $result = "";
    given($_){
        when(!($_ % 3)){$result = $result." Fizz"; continue}
        when(!($_ % 5)){$result = $result." Bin"; continue}
        when(!($_ % 7)){$result = $result." Sausage";}
    }
    print "$_ $result\n";
}

#given and when are experimental