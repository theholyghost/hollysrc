### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameAI::Umberlee;

our @ISA = "MutualExclusiveDeityAI";

sub Umberlee {
	my $class = shift;

	my $self = $class->SUPER::MutualExclusiveDeityAI(qw(swim empower)); 

	bless $self, ref($class) || $class;
}


	 
