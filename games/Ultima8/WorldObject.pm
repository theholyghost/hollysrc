### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";

package Ultima8::WorldObject;

sub WorldObject { 
	my ($class, $x, $y, $z, $w, $h, $d) = @_;

	$self = { x => $x, y => $y, z => $z, w => $w, h => $h, d => $d };

	return bless $self, ref($class) || $class;
}


