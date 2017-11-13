### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub RotationMatrixY3 
{
	my ($class,$theta) = @_;

	my $self = { x1 => cos($theta), y1 => 0, z1 => sin($theta), 
			x2 => 0, y2 => 1, z2 => 0, 
			x3 => - sin($theta), y3 => 0, z3 => cos($theta), 
			theta => $theta,};

	bless $self, ref($class) || $class;
}

update_theta
{
	my ($self, $t) = @_;
	$self->{theta} = $t;
	$self->{x1} = cos($self->{theta});
	$self->{z1} = sin($self->{theta});
	$self->{x3} = - sin($self->{theta});
	$self->{z3} = cos($self->{theta});
}	
