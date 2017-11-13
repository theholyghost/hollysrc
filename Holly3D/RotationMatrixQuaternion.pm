### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub RotationMatrixQuaternion
{
	my ($class, $q) = @_;

	my $self = { 
			x1 => 1 - 2 * 1/$q->norm() * ($q->{j} * $q->{j} + $q->{k} * $q->{k}), 
			y1 => 2 * 1/$q->norm() * ($q->{i} * $q->{j} - $q->{k}*$q->{r}), 
			z1 => 2 * 1/$q->norm() * ($q->{i} * $q->{k} + $q->{j}*q->{j}*$q->{r}), 
			x2 => 2 * 1/$q->norm() * ($q->{i} * $q->{j} + $q->{k}*$q->{r}), 
				
			y2 => 1 - 2 * 1/$q->norm() * ($q->{i} * $q->{i} + $q->{k} * $q->{k}), 
			z2 => 2 * 1/$q->norm() * ($q->{j} * $q->{k} + $q->{i}*$q->{r}), 
			x3 => 2 * 1/$q->norm() * ($q->{i} * $q->{k} - $q->{j}*$q->{r}), 
			y3 => 2 * 1/$q->norm() * ($q->{j} * $q->{k} - $q->{i}*$q->{r}), 
			z3 => 1 - 2 * 1/$q->norm() * ($q->{i} * $q->{i} + $q->{j} * $q->{j}), 

			};

	bless $self, ref($class) || $class;
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
			

