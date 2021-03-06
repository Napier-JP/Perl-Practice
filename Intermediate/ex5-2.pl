use strict;
use warnings;
use Storable;

my %total_bytes;

while(<>){
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
    $total_bytes{$source}{"all"} += $bytes;
}

my @sortedSources = sort { $total_bytes{$b}{"all"} <=> $total_bytes{$a}{"all"} } keys %total_bytes;

for my $source(@sortedSources){
    for my $destination (keys %{ $total_bytes{$source} }){
	print "$source ===> $destination: ", "$total_bytes{$source}{$destination} bytes\n";
    }
    print "----\n";
} 
