use Person;
use Cow;

my @pasture = qw(Person Cow);
foreach my $beast(@pasture){
    $beast->speak;
    if ($beast eq "Person"){
	$beast->speak("Hello, World!");
    }else{
    $beast->speak("Meow, meow, I'm a cow I said meow meow I'm a cow.");
    }
}
