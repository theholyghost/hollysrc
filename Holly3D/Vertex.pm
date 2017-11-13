### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub Vertex 
{
	my ($class,$x,$y,$z) = @_;

	my $self = { x => $x, y => $y, z => $z, };

	bless $self, ref($class) || $class;
}

sub getxyz
{
	my $self = shift;

	return ($self->{x}, $self->{y}, $self->{z});
} 
sub getx
{
	my $self = shift;

	return $self->{x};
} 

sub gety
{
	my $self = shift;

	return $self->{y};
} 

sub getz
{
	my $self = shift;

	return $self->{z};
} 

sub setx
{
	my ($self,$x) = @_;

	$self->{x} = $x;
}

sub sety
{
	my ($self,$y) = @_;

	$self->{y} = $y;
}

sub setz
{
	my ($self,$z) = @_;

	$self->{z} = $z;
}

sub minus
{	
	my ($self, $vertex) = @_;

	return Vertex->Vertex($self->{x} - $vertex->{x},
				$self->{y} - $vertex->{y},
				$self->{z} - $vertex->{z},
				);
}	

sub plus
{	
	my ($self, $vertex) = @_;

	return Vertex->Vertex($self->{x} + $vertex->{x},
				$self->{y} + $vertex->{y},
				$self->{z} + $vertex->{z},
				);
}

sub multiply 
{	
	my ($self, $vertex) = @_;

	return Vertex->Vertex($self->{x} * $vertex->{x},
				$self->{y} * $vertex->{y},
				$self->{z} * $vertex->{z},
				);
}

sub dotproduct
{
	my ($self, $vertex) = @_;

	return $self->{x} * $vertex->{x} +
		$self->{y} * $vertex->{y} +
		$self->{z} * $vertex->{z};
}


