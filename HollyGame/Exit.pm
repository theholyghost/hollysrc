### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::Exit; 

our @ISA = "HollyGame::Box";

sub Exit {
	my ($class) = shift;
	my $self = {};
	bless $self, $class;

	$self = $self->SUPER::Box(shift,shift,shift,shift);

	return bless $self, $class;
}


