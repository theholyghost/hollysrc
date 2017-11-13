### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub Matrix3 
{
	my ($class,$x1,$y1,$z1,$x2,$y2,$z2,$x3,$y3,$z3) = @_;

	my $self = { x1 => $x1, y1 => $y1, z1 => $z1, 
			x2 => $x2, y2 => $y2, z2 => $z2, 
			x3 => $x3, y3 => $y3, z3 => $z3, 
			};

	bless $self, ref($class) || $class;
}

sub getrow1
{
	my $self = shift;

	return ($self->{x1}, $self->{y1}, $self->{z1});
} 

sub getrow2
{
	my $self = shift;

	return ($self->{x2}, $self->{y2}, $self->{z2});
} 

sub getrow3
{
	my $self = shift;

	return ($self->{x3}, $self->{y3}, $self->{z3});
} 

sub minus
{	
	my ($self, $matrix3) = @_;

	return Matrix3->Matrix3($self->{x1} - $matrix3->{x1},
				$self->{y1} - $matrix3->{y1},
				$self->{z1} - $matrix3->{z1},
				$self->{x2} - $matrix3->{x2},
				$self->{y2} - $matrix3->{y2},
				$self->{z2} - $matrix3->{z2},
				$self->{x3} - $matrix3->{x3},
				$self->{y3} - $matrix3->{y3},
				$self->{z3} - $matrix3->{z3},
				);
}	

sub plus 
{	
	my ($self, $matrix3) = @_;

	return Matrix3->Matrix3($self->{x1} + $matrix3->{x1},
				$self->{y1} + $matrix3->{y1},
				$self->{z1} + $matrix3->{z1},
				$self->{x2} + $matrix3->{x2},
				$self->{y2} + $matrix3->{y2},
				$self->{z2} + $matrix3->{z2},
				$self->{x3} + $matrix3->{x3},
				$self->{y3} + $matrix3->{y3},
				$self->{z3} + $matrix3->{z3},
				);
}	

sub multiplybymatrix 
{	
	my ($self, $matrix3) = @_;

	return Matrix3->Matrix3(
				$self->{x1} * $matrix3->{x1} +
				$self->{y1} * $matrix3->{x2} +
				$self->{z1} * $matrix3->{x3},
			
				$self->{x1} * $matrix3->{y1} +
				$self->{y1} * $matrix3->{y2} +
				$self->{z1} * $matrix3->{y3},
			
				$self->{x1} * $matrix3->{z1} +
				$self->{y1} * $matrix3->{z2} +
				$self->{z1} * $matrix3->{z3},
			
				$self->{x2} * $matrix3->{x1} +
				$self->{y2} * $matrix3->{x2} +
				$self->{z2} * $matrix3->{x3},
			
				$self->{x2} * $matrix3->{y1} +
				$self->{y2} * $matrix3->{y2} +
				$self->{z2} * $matrix3->{y3},
			
				$self->{x2} * $matrix3->{z1} +
				$self->{y2} * $matrix3->{z2} +
				$self->{z2} * $matrix3->{z3},
			
				$self->{x3} * $matrix3->{x1} +
				$self->{y3} * $matrix3->{x2} +
				$self->{z3} * $matrix3->{x3},
			
				$self->{x3} * $matrix3->{y1} +
				$self->{y3} * $matrix3->{y2} +
				$self->{z3} * $matrix3->{y3},
			
				$self->{x3} * $matrix3->{z1} +
				$self->{y3} * $matrix3->{z2} +
				$self->{z3} * $matrix3->{z3},
				);
}

sub multiplybyvector
{	
	my ($self, $vector3) = @_;

	return Vector3->Vector3(
				$self->{x1} * $vector3->{x} +
				$self->{y1} * $vector3->{y} +
				$self->{z1} * $vector3->{z},
			
				$self->{x2} * $vector3->{x} +
				$self->{y2} * $vector3->{y} +
				$self->{z2} * $vector3->{z},
			
				$self->{x3} * $vector3->{x} +
				$self->{y3} * $vector3->{y} +
				$self->{z3} * $vector3->{z},
				};
}	
			

