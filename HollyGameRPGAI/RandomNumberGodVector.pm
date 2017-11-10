### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::RNG;
use lib "../HollyGameRPGAI";
use AIVector;
### Random Number God, dice class, using vectors

sub RNG {
	my $class = shift;

	$self = { input => AIVector->AIVector(),
		output => AIVector->AIVector(),
		};	

	return bless $self, ref($class) || $class;
}

