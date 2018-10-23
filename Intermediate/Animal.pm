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

sub named{
    my $class = shift;
    my $name = shift;
    my $self = {Name => $name, Color => $class->default_color};  #個別に設定できるクラス属性はないんですか

    bless $self, $class;  # WHY NOT instantiate???? why did god bless class???
}

sub name{
    my $classOrInstance = shift;
    if(ref $classOrInstance){  # True:インスタンスである
	return $classOrInstance->{Name};
    }else{  # False:クラスである
	return "unnamed $classOrInstance yet";
    }
}

sub color{
    my $classOrInstance = shift;
    if(ref $classOrInstance){
	return $classOrInstance->{Color};
    }else{
	return $classOrInstance->default_color;
    }
}

sub set_name{
    my $self = shift;
    if(ref $self){ # インスタンスでなければならない
	$self->{Name} = shift;
    }
}

sub set_color{
    my $self = shift;
    if(ref $self){
	$self->{Color} = shift;
    }
}

1;
