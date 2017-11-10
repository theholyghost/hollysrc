### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::MapRoom;

our @ISA = "HollyGame::Room";
use lib "../HollyGame";

use Room;

sub MapRoom {
	my $class = shift;

	$self = $class->SUPER::Room;
	$self->{exits} = ();
	return bless $self, ref($class) || $class;
}

sub add_exit {
	my ($self, $exit) = shift;

	push (@exits, $exit);
}

sub collide_exit {
	my ($self, $box) = shift;

	return $box->is_collision($self);
}

1;	
