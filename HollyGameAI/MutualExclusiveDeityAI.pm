### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameAI::MutualExclusiveDeityAI;

our @ISA = "MutualExclusiveAI";

sub MutualExclusiveDeityAI {
	my $class = shift;

	my $self = $class->SUPER::MutualExclusiveAI(@_); 

	bless $self, ref($class) || $class;
}


	 
