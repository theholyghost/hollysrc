### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::MapRoomExample;

our @ISA = "HollyGame::MapRoom";

sub MapRoom {
	my $class = shift;

	$self = $class->SUPER::MapRoom;
	$self->{@exits} = ();

	return bless $self, ref($class) || $class;
}

