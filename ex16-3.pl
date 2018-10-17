use strict;
use warnings;

my $time = localtime();

if($time =~ /\A (Sun|Sat)/x){
#if(`date` =~ /\A (Sun|Sat)/x){
    print "go play";
}else{
    print "get to work";
}