use strict;
use warnings;

my $answer = int(1 + rand 100);

while(1){
        chomp(my $guess = <STDIN>);
        if($guess eq  '' || $guess eq "quit" || $guess eq "exit"){
                last;
        }elsif($answer > $guess){
                print "Too low";
        }elsif($answer < $guess){
                print "Too high";
        }elsif($answer == $guess){
                last;
        }else{  
                #do nothing
	}
}
