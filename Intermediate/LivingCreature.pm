package LivingCreature;

sub speak{
    my $class = shift;
    if(@_){
	my $word = shift @_;
	print "a $class goes $word\n";
    }else{
	print "a $class goes ", $class->sound, "\n";
    }
}

1;
