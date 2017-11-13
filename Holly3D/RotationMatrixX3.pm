### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub RotationMatrixX3 
{
	my ($class,$theta) = @_;

	my $self = { x1 => 1, y1 => 0, z1 => 0, 
			x2 => 0, y2 => cos($theta), z2 => - sin($theta), 
			x3 => 0, y3 => sin($theta), z3 => cos($theta), 
			theta => $theta,};

	bless $self, ref($class) || $class;
}

update_theta
{
	my ($self, $t) = @_;
	$self->{theta} = $t;
	$self->{y2} = cos($self->{theta});
	$self->{z2} = - sin($self->{theta});
	$self->{y3} = sin($self->{theta});
	$self->{z2} = cos($self->{theta});
}	
