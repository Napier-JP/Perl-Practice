use strict;
use warnings;

chomp(my $chosenDir = <STDIN>);
if ($chosenDir =~ /\A \s* \z/x){
    chdir or die "unable to chdir to home";
    print "chdir home ok\n"
}else{
    chdir $chosenDir or die "unable to chdir to $chosenDir";
    print "chdir ok\n"
}

opendir(dir_hdl, ".") or die "unable to open cwd";

foreach(sort readdir(dir_hdl)){
    print "$_\n";
}