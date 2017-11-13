### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub RotationMatrixZ3 
{
	my ($class,$theta) = @_;

	my $self = { x1 => cos($theta), y1 => - sin($theta), z1 => 0, 
			x2 => sin($theta), y2 => cos($theta), z2 => 0, 
			x3 => 0, y3 => 0, z3 => 1, 
			theta => $theta,};

	bless $self, ref($class) || $class;
}

update_theta
{
	my ($self, $t) = @_;
	$self->{theta} = $t;
	$self->{x1} = cos($self->{theta});
	$self->{y1} = - sin($self->{theta});
	$self->{x2} = sin($self->{theta});
	$self->{y2} = cos($self->{theta});
}	
