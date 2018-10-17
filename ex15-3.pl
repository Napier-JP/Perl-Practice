use strict;
use warnings;
use 5.010001;

for(@ARGV){
    print "$_\n";
    when(-r _){print "readable\n"; continue}
    when(-w _){print "writable\n"; continue}
    when(-x _){print "executable\n"; continue}
}