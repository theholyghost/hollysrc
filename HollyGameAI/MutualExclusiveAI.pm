### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameAI::MutualExclusiveAI;

use lib "../HollyGameAI";
use Factory;

sub MutualExclusiveAI {
	my ($class) = shift;
	
	my $self = { aiclass => HollyGameAI::Factory->Factory(@_) };

	bless $self, ref($class) || $class;
}


