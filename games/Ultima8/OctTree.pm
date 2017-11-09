### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";

package Ultima8::OctTree;

sub OctTree {
	my ($class, $worldwidth, $worldheight, $worlddepth, @worldobjects) = @_;

	$self = { worldwidth => $worldwidth, worldheight => $worldheight, worlddepth => $worlddepth };
	$self->{level} = 0;
	$self->{rootnodes} = { 0 => () };

	bless $self, ref($class) || $class;
	$self->build_rec($self->{worldwidth} /2, $self->{worldheight} / 2,
			$self->{worlddepth} / 2, $self->{level}, @worldobjects, $self->{rootnodes});
	return $self;
}

sub build_rec {
	my ($self, $middlex, $middley, $middlez, $worldwidth, $worldheight, $worlddepth, $level, @worldobjects, %rootnodes) = @_;

	my $middletmpx = $middlex / 2;
	my $middletmpy = $middley / 2;
	my $middletmpz = $middlez / 2;	
	my $worldwidth = $worldwidth / 2;
	my $worldheight = $worldheight / 2;
	my $worlddepth = $worlddepth / 2;	

	if ($middletmpx <= 0 or $middletmpy <= 0 or $middletmpz <= 0) {
		return %rootnodes;
	}  



	my @nextobjects = @worldobjects;

	foreach $obj (@worldobjects) {
		if (collision_object_with_divisor($obj, $middlex, $middley, $middleyz)) {
			$rootnodes{$level} .= $obj;
			splice(@nextobjects, $obj, 1);
		}
	}
			
	build_rec($middletmpx - $worldwidth, $middletmpy - $worldheight, $middletmpz - $worlddepth, $level++, @nextobjects, ()); 
	build_rec($middletmpx + $worldwidth, $middletmpy - $worldheight, $middletmpz - $worlddepth, $level, @nextobjects, ()); 
	build_rec($middletmpx - $worldwidth, $middletmpy + $worldheight, $middletmpz - $worlddepth, $level, @nextobjects, ()); 
	build_rec($middletmpx + $worldwidth, $middletmpy + $worldheight, $middletmpz - $worlddepth, $level, @nextobjects, ()); 
	build_rec($middletmpx - $worldwidth, $middletmpy - $worldheight, $middletmpz + $worlddepth, $level, @nextobjects, ()); 
	build_rec($middletmpx + $worldwidth, $middletmpy - $worldheight, $middletmpz + $worlddepth, $level, @nextobjects, ()); 
	build_rec($middletmpx - $worldwidth, $middletmpy + $worldheight, $middletmpz + $worlddepth, $level, @nextobjects, ()); 
	build_rec($middletmpx + $worldwidth, $middletmpy + $worldheight, $middletmpz + $worlddepth, $level, @nextobjects, ()); 
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
