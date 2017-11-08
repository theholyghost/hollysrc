### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";

package Ultima8::OCtTree;

sub OctTree {
	my ($class, $worldwidth, $worldheight, $worlddepth, @worldobjects) = @_;

	$self = { worldwidth => $worldwidth, worldheight => $worldheight, worlddepth => $worlddepth };
	$self->{level} = 0;
	$self->{rootnodes} = { 0 => () };

	$self->build_rec($self->{worldwidth} /2, $self->{worldheight} / 2,
			$self->{worlddepth} / 2, $self->{level}, @worldobjects, $self->{rootnodes});

	return bless $self, ref($class) || $class;
}

sub build_rec {
	my ($self, $middlex, $middley, $middlez, $level, @worldobjects, %rootnodes) = @_;

	my $middletmpx = $middlex / 2;
	my $middletmpy = $middley / 2;
	my $middletmpz = $middlez / 2;	
	my @nextobjects = @worldobjects;

	foreach $obj (@worldobjects) {
		if (collision_object_with_divisor($obj, $middlex, $middley, $middleyz)) {
			$rootnodes{$level} .= $obj;
			splice(@nextobjects, $obj, 1);
			
		}
	}
			
	build_rec($middletmpx - $self->{worldwidth} / 2, $middletmpy - $self->{worldheight} / 2, $middletmpz - $self->{worlddepth}, $level++, @nextobjects, ()); 
	build_rec($middletmpx + $self->{worldwidth} / 2, $middletmpy - $self->{worldheight} / 2, $middletmpz - $self->{worlddepth}, $level, @nextobjects, ()); 
	build_rec($middletmpx - $self->{worldwidth} / 2, $middletmpy + $self->{worldheight} / 2, $middletmpz - $self->{worlddepth}, $level, @nextobjects, ()); 
	build_rec($middletmpx + $self->{worldwidth} / 2, $middletmpy + $self->{worldheight} / 2, $middletmpz - $self->{worlddepth}, $level, @nextobjects, ()); 
	build_rec($middletmpx - $self->{worldwidth} / 2, $middletmpy - $self->{worldheight} / 2, $middletmpz + $self->{worlddepth}, $level, @nextobjects, ()); 
	build_rec($middletmpx + $self->{worldwidth} / 2, $middletmpy - $self->{worldheight} / 2, $middletmpz + $self->{worlddepth}, $level, @nextobjects, ()); 
	build_rec($middletmpx - $self->{worldwidth} / 2, $middletmpy + $self->{worldheight} / 2, $middletmpz + $self->{worlddepth}, $level, @nextobjects, ()); 
	build_rec($middletmpx + $self->{worldwidth} / 2, $middletmpy + $self->{worldheight} / 2, $middletmpz + $self->{worlddepth}, $level, @nextobjects, ()); 
}

sub collision_object_with_divisor {
	my ($self, $obj, $x, $y, $z) = @_;

		if ($obj->{x} > $x and $obj->{x} + $obj->{w} < $x) {
			return 0;
		}
		if ($obj->{y} > $y and $obj->{y} + $obj->{h} < $y) {
			return 0;
		}
		if ($obj->{z} > $z and $obj->{z} + $obj->{d} < $z) {
			return 0;
		}
	return 1;	
}


sub draw {
}

