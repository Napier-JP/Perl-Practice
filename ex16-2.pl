use strict;
use warnings;

open(STDOUT, ">", "ls.out") or die "unable to write STDOUT";
open(STDERR, ">", "ls.err") or die "unable to write STDERR";
chdir or die "unable to chdir";
exec "dir" or die "unable to dir";
#exec "ls", "-l" or die "unable to ls -l";