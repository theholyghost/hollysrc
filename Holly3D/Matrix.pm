### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub Matrix 
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
	my ($self, $matrix) = @_;

	return Matrix->Matrix($self->{x1} - $matrix->{x1},
				$self->{y1} - $matrix->{y1},
				$self->{z1} - $matrix->{z1},
				$self->{x2} - $matrix->{x2},
				$self->{y2} - $matrix->{y2},
				$self->{z2} - $matrix->{z2},
				$self->{x3} - $matrix->{x3},
				$self->{y3} - $matrix->{y3},
				$self->{z3} - $matrix->{z3},
				);
}	

sub plus 
{	
	my ($self, $matrix) = @_;

	return Matrix->Matrix($self->{x1} + $matrix->{x1},
				$self->{y1} + $matrix->{y1},
				$self->{z1} + $matrix->{z1},
				$self->{x2} + $matrix->{x2},
				$self->{y2} + $matrix->{y2},
				$self->{z2} + $matrix->{z2},
				$self->{x3} + $matrix->{x3},
				$self->{y3} + $matrix->{y3},
				$self->{z3} + $matrix->{z3},
				);
}	

sub translateX 
{	
	my ($self, $vertex) = @_;

	return Matrix->Matrix($self->{x1} + $vertex->{x},
				$self->{y1},
				$self->{z1},
				$self->{x2} + $vertex->{y},
				$self->{y2},
				$self->{z2},
				$self->{x3} + $vertex->{z},
				$self->{y3},
				$self->{z3},
				);
	
}

sub translateY 
{	
	my ($self, $vertex) = @_;

	return Matrix->Matrix($self->{x1},
				$self->{y1} + $vertex->{x},
				$self->{z1},
				$self->{x2},
				$self->{y2} + $vertex->{y},
				$self->{z2},
				$self->{x3},
				$self->{y3} + $vertex->{z},
				$self->{z3},
				);
	
}

sub translateZ 
{	
	my ($self, $vertex) = @_;

	return Matrix->Matrix($self->{x1},
				$self->{y1},
				$self->{z1} + $vertex->{x},
				$self->{x2},
				$self->{y2},
				$self->{z2} + $vertex->{y},
				$self->{x3},
				$self->{y3},
				$self->{z3} + $vertex->{z},
				);
	
}

sub multiplybymatrix 
{	
	my ($self, $matrix) = @_;

	return Matrix->Matrix(
				$self->{x1} * $matrix->{x1} +
				$self->{y1} * $matrix->{x2} +
				$self->{z1} * $matrix->{x3},
			
				$self->{x1} * $matrix->{y1} +
				$self->{y1} * $matrix->{y2} +
				$self->{z1} * $matrix->{y3},
			
				$self->{x1} * $matrix->{z1} +
				$self->{y1} * $matrix->{z2} +
				$self->{z1} * $matrix->{z3},
			
				$self->{x2} * $matrix->{x1} +
				$self->{y2} * $matrix->{x2} +
				$self->{z2} * $matrix->{x3},
			
				$self->{x2} * $matrix->{y1} +
				$self->{y2} * $matrix->{y2} +
				$self->{z2} * $matrix->{y3},
			
				$self->{x2} * $matrix->{z1} +
				$self->{y2} * $matrix->{z2} +
				$self->{z2} * $matrix->{z3},
			
				$self->{x3} * $matrix->{x1} +
				$self->{y3} * $matrix->{x2} +
				$self->{z3} * $matrix->{x3},
			
				$self->{x3} * $matrix->{y1} +
				$self->{y3} * $matrix->{y2} +
				$self->{z3} * $matrix->{y3},
			
				$self->{x3} * $matrix->{z1} +
				$self->{y3} * $matrix->{z2} +
				$self->{z3} * $matrix->{z3},
				);
}

sub multiplybyvector
{	
	my ($self, $vertex) = @_;

	return Vertex->Vertex(
				$self->{x1} * $vertex->{x} +
				$self->{y1} * $vertex->{y} +
				$self->{z1} * $vertex->{z},
			
				$self->{x2} * $vertex->{x} +
				$self->{y2} * $vertex->{y} +
				$self->{z2} * $vertex->{z},
			
				$self->{x3} * $vertex->{x} +
				$self->{y3} * $vertex->{y} +
				$self->{z3} * $vertex->{z},
				};
}	
			

