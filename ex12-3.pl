use strict;
use warnings;

while(@ARGV){
    my $file = shift(@ARGV);
    if(-r -w -o $file){
        print "$file\n";
    }
}