### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub Vector3 
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
	my ($self, $vector3) = @_;

	return Vector3->Vector3($self->{x} - $vector3->{x},
				$self->{y} - $vector3->{y},
				$self->{z} - $vector3->{z},
				);
}	

sub plus
{	
	my ($self, $vector3) = @_;

	return Vector3->Vector3($self->{x} + $vector3->{x},
				$self->{y} + $vector3->{y},
				$self->{z} + $vector3->{z},
				);
}

sub multiply 
{	
	my ($self, $vector3) = @_;

	return Vector3->Vector3($self->{x} * $vector3->{x},
				$self->{y} * $vector3->{y},
				$self->{z} * $vector3->{z},
				);
}

sub dotproduct
{
	my ($self, $vector3) = @_;

	return $self->{x} * $vector3->{x} +
		$self->{y} * $vector3->{y} +
		$self->{z} * $vector3->{z};
}


