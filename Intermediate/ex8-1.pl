use strict;
use warnings;
use IO::Tee;

my $scalar;
my $output; # ファイルハンドルはundefでなければならない
my $now = `date`;
print "Which output do you prefer? 'file', 'scalar', or 'both'";

chomp(my $pref = <STDIN>);

if($pref eq "file"){
    open $output, ">", "$0.out";
}elsif($pref eq "scalar"){
    open $output, ">", \$scalar;  # $scalarに格納されているところに送ってほしいのではなく、$scalarを指すはずのところに送ってほしい
}elsif($pref eq "both"){
    open my $fileFH, ">", "$0.out";
    open my $scalarFH, ">", \$scalar;
    $output = IO::Tee->new($fileFH, $scalarFH);
}else{
    print "wrong input\n";
}

print $output "${now}";
print $scalar unless $pref eq "file";
