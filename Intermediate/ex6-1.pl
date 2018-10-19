use strict;
use warnings;
use Storable;

my $data_file = "coconet.dat";

my %total_bytes;
if(-e $data_file){
    my $data = retrieve $data_file;
    %total_bytes = %$data;
}

while(<>){
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
    $total_bytes{$source}{"all"} += $bytes;
}

store \%total_bytes, $data_file;

for my $source(keys %total_bytes){
    for my $destination (keys %{ $total_bytes{$source} }){
	print "$source ===> $destination: ", "$total_bytes{$source}{$destination} bytes\n";
    }
    print "----\n";
} 
