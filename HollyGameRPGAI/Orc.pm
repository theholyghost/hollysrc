### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::Orc;
use lib "../HollyGameRPGAI";

sub Orc {
	my $class = shift;

	$self = {
		OrcAI => RandomNumberGod->RandomNumberGod(), };	

	return bless $self, ref($class) || $class;
}


