### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::XYZZY;

sub XYZZY {
	my $class = shift;

	$self = { x => rand(), y => rand(), z => rand(), t => rand() };
	bless $self, ref($class) || $class;
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

sub getxyz
{
	my $self = shift;
	
	return ($self->{x}, $self->{y}, $self->{z});
}

sub setxyz
{
	my ($self, $x, $y, $z) = shift;
	
	$self->{x} = $x;
	$self->{y} = $y;
	$self->{z} = $z;
}

sub minus
{
	my ($self, $vector) = @_;

	return XYZZY->XYZZY($self->{x} - $vector->getx, 
			$self->{y} - $vector->gety,
			$self->{z} - $vector->getz,
			);
}

sub norm
{
	my ($self) = @_;

	return sqrt ($self->{x} * $self->{x}		
	+ $self->{y} * $self->{z}		
	+ $self->{y} * $self->{z});
}

1;
