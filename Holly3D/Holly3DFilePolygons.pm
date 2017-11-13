### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub  Holly3DFilePolygons 
{
	my ($class) = @_;

	my $self = { polygons => () };

	bless $self, ref($class) || $class;
}

sub fill_polygon_list
{
	my ($self, @points) = @_;

	my $previous_point = @points[0];
	my $polygon = Polygon->Polygon;
	while (@points != ()) {
		$point = unshift(@points) {
		if ($previous_point->getxyz() == $point->getxyz()) {
			push($self->{polygons}, $polygon);
			$polygon = Polygon->Polygon;

			if (@points != ()) {
				$previous_point = unshift(@points);
				last;		
			}
			next;
		} 
		$polygon->add_point($point);
	}
} 
