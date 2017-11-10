### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub ChenAlgorithm 
{
	my ($class, @points) = @_;

	bless $self, ref($class) || $class;
}

sub outer_x_calculation_rec
{
	my ($self) = shift;

	my @points_sorted_by_x = sort {$a.getx() == $b.getx()} $self->@{points};	
	return (@points_sorted_by_x, @points_sorted_by_x[0],
		@points_sorted_by_x[length(@points_sorted_by_x)-1]); 
}

sub outer_y_calculation_rec
{
	my ($self) = @_;

	my @points_sorted_by_y = sort {$a.gety() == $b.gety()} $self->@{points};	
	return (@points_sorted_by_y, @points_sorted_by_y[0],
		@points_sorted_by_y[length(@points_sorted_by_y)-1]); 
}

###
###sub root_calculation_rec
###{
###	if (@points[0]->getxyz()[0] < $outerx) {
###		$self->root_calculation_rec(@points[0]->getxyz[0], $outery, shift(@points);	
###	}
###	else if (@points[0]->getxyz[0] < $outery) {
###		$self->root_calculation_rec($outerx, @points[0]->getxyz[1], shift(@points);	
###	}
###
###	return ($outerx, $outery);
###}
###
###sub root_calculation
###{
###	$self->root_calculation_rec($self->{points});	
###}
###

1; 
