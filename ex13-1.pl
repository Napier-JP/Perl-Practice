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

my @files = glob "*";  #globだと明示
foreach(@files){
    print "$_\n";
}