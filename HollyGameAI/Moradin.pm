### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameAI::Moradin;

our @ISA = "MutualExclusiveDeityAI";

sub Moradin {
	my $class = shift;

	my $self = $class->SUPER::MutualExclusiveDeityAI(qw(empower)); 

	bless $self, ref($class) || $class;
}


	 
