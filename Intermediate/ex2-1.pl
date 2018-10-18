use strict;
use warnings;
use File::Spec;
use Cwd;

my $cwd = getcwd;

foreach my $file(glob "*"){
	print File::Spec->catfile($cwd, $file), "\n";
}
	
