use strict;
use warnings;

my $filename = $ARGV[0];

if (-x $filename){
	print "The file is executable\n";
}else{
	print "NOT executable\n";
}

if (-w $filename){
	print "The file is writable\n";
}else{
	print "NOT writable\n";
}

if (-r $filename){
	print "The file is readable\n";
}else{
	print "NOT readable\n";	
}

