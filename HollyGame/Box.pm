### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::Box; 

sub Box {
	my ($class) = shift;

	my $self = { $x => shift, $y => shift, $w => shift, $h => shift };

	return bless $self, ref($class) || $class;
}

sub is_collision {
	my ($self, $box) = shift;

	if ($box->{x} < $self->{x}) {
		return 0;
	}
	if ($box->{x} + $box->{w} > $self->{x} + $self->{w}) {
		return 0;
	}	
	if ($box->{y} < $self->{y}) {
		return 0;
	}
	if ($box->{y} + $box->{h} > $self->{y} + $self->{h}) {
		return 0;
	}
	return 1;
}

1;	
