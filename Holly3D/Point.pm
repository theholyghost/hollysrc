### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub Point
{
	my ($class) = @_;

	my $self = { $x = rand(), $y = rand(), $z = rand(), };

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

