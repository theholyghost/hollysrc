### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameAI::Factory;

our @ISA = "HollyGameAI::Interface";

sub Factory {
	my $class = shift;

	my $self = $class->SUPER::Interface(@_); 
	### include abstract method names

	return bless $self, $class;
}
 

