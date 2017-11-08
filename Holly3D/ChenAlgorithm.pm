### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub ChenAlgorithm 
{
	my ($class) = @_;
	my @points = shift;

	bless $self, ref($class) || $class;
}

sub root_calculation_rec
{
	my ($self, $outerx, $outery, $points) = shift;

	if (@points[0]->getxyz[0] < $outerx) {
		$self->root_calculation_rec(@points[0]->getxyz[0], $outery, shift(@points);	
	}
	else if (@points[0]->getxyz[0] < $outery) {
		$self->root_calculation_rec($outerx, @points[0]->getxyz[1], shift(@points);	
	}

	return ($outerx, $outery);
}

sub root_calculation
{
	$self->root_calculation_rec($self->{points});	
}

1; 
