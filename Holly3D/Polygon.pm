### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub Polygons 
{
	my ($class) = @_;

	my $self = { points => () };

	bless $self, ref($class) || $class;
}

sub add_point
{
	my ($self, $point) = @_;

	push ($self->{points}, $point);
}
