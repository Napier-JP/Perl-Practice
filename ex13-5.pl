use strict;
use warnings;

my ($oldName, $newName) = @ARGV;

rename($oldName, $newName) or die "unable to rename";
print("Renamed $oldName to $newName");