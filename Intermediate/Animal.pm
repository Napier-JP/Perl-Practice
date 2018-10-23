package Animal;
use parent qw(LivingCreature);

sub speak{
    my $class = shift;
    die "Animal cannot speak, shut up!" if @_;
    $class->SUPER::speak;  # $class名義で親クラスのメソッドを起動
}

sub sound{
    my $class = shift;
    die "undefined sound() in a subclass $class"
}

1;
