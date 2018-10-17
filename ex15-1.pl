use strict;
use warnings;
use 5.010001;

my $answer = int(1 + rand 100);

while(1){
    chomp(my $guess = <STDIN>);
    given ($guess) {
        when ($_ > $answer) {print "Too high"}
        when ($_ < $answer) {print "Too low"}
        default {print "Correct"; last}
    }
}

#given and when are experimental