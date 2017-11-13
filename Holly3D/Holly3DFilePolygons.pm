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
	my $point = @points[0];
	my $polygon = Polygon->Polygon;
	while (scalar(@points) != 0) {
		if ($previous_point->getxyz() == $point->getxyz()) {
			push($self->{polygons}, $polygon);
			$polygon = Polygon->Polygon;

			if (scalar(@points) != 0) {
				$previous_point = unshift(@points);
				$point = $previous_point;
				next;		
			}
			last;
		} 
		$polygon->add_point($point);
		$point = unshift(@points);
	}
} 
