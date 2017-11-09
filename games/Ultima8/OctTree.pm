### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";

package Ultima8::OctTree;

sub OctTree {
	my ($class, $worldwidth, $worldheight, $worlddepth, @worldobjects) = @_;

	$self = { worldwidth => $worldwidth, worldheight => $worldheight, worlddepth => $worlddepth };
	$self->{level} = 0;
	$self->{rootnodes} = {};

	bless $self, ref($class) || $class;
	$self->build_rec($self->{worldwidth}, $self->{worldheight},
			$self->{worlddepth}, $self->{worldwidth}, 
			$self->{worldheight}, $self->{worlddepth},
			$self->{level}, @worldobjects);
	return $self;
}

sub build_rec {
	my ($self, $middlex, $middley, $middlez, $worldwidth, $worldheight, $worlddepth, $level, @worldobjects) = @_;

	my $middletmpx = $middlex / 2;
	my $middletmpy = $middley / 2;
	my $middletmpz = $middlez / 2;	
	my $worldwidth = $worldwidth / 2;
	my $worldheight = $worldheight / 2;
	my $worlddepth = $worlddepth / 2;	

	if ($middletmpx <= 1 or $middletmpy <= 1 or $middletmpz <= 1) {
		return;
	}  

	my @nextobjects = @worldobjects;

	foreach $obj (@worldobjects) {
		if (collision_object_with_divisor($obj, $middlex, $middley, $middleyz)) {
			$self->{rootnodes}{$level} .= $obj;
			splice(@nextobjects, $obj, 1);
		}
	}
			
	$self->build_rec($middletmpx, $middletmpy, $middletmpz,$worldwidth, $worldheight, $worlddepth, $level++, @nextobjects); 
	$self->build_rec($middletmpx + $worldwidth, $middletmpy - $worldheight, $middletmpz - $worlddepth,$worldwidth, $worldheight, $worlddepth, $level, @nextobjects); 
	$self->build_rec($middletmpx - $worldwidth, $middletmpy + $worldheight, $middletmpz - $worlddepth,$worldwidth, $worldheight, $worlddepth, $level, @nextobjects); 
	$self->build_rec($middletmpx + $worldwidth, $middletmpy + $worldheight, $middletmpz - $worlddepth,$worldwidth, $worldheight, $worlddepth, $level, @nextobjects); 
	$self->build_rec($middletmpx - $worldwidth, $middletmpy - $worldheight, $middletmpz + $worlddepth,$worldwidth, $worldheight, $worlddepth, $level, @nextobjects); 
	$self->build_rec($middletmpx + $worldwidth, $middletmpy - $worldheight, $middletmpz + $worlddepth,$worldwidth, $worldheight, $worlddepth, $level, @nextobjects); 
	$self->build_rec($middletmpx - $worldwidth, $middletmpy + $worldheight, $middletmpz + $worlddepth,$worldwidth, $worldheight, $worlddepth, $level, @nextobjects); 
	$self->build_rec($middletmpx + $worldwidth, $middletmpy + $worldheight, $middletmpz + $worlddepth,$worldwidth, $worldheight, $worlddepth, $level, @nextobjects); 
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


sub update {
}

sub draw {
}

1;
