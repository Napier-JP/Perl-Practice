use strict;
use warnings;

chdir or die "unable to chdir";
exec "dir" or die "unable to dir";
#exec "ls", "-l" or die "unable to ls -l";