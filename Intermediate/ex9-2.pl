use strict;
use warnings;

my @regexPatternList = ();
open my $inputFH, "<", "ex9-pattern.txt" or die "unable to open";

while(<$inputFH>){
    chomp($_);
    my $regexPattern = eval {qr/$_/};
    print "wrong pattern input" if $@;
    push @regexPatternList, $regexPattern;
}

while(<>){
    foreach my $precompiledPattern(@regexPatternList){
	if(m/$precompiledPattern/){
	    print "Matched at line ${.} ===> $_\n"
	}
    }
}
