### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";

package Ultima8::Cube;

sub Cube { 
	my ($class, $x, $y, $z, $w, $h, $d) = @_;

	$self = { x => $x, y => $y, z => $z, width => $w, height => $h, depth => $d };

	return bless $self, ref($class) || $class;
}


