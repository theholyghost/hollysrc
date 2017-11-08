### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::Room;

sub Room {
	my $class = shift;

	my $self = { boxes => (), sprites => (), enemies => () };

	return bless $self, ref($class) || $class;
}

sub update {
	my $self = shift;

	foreach my $sprite (@sprites) {
		$sprite->update($self);
	}
	foreach my $enemy (@enemies) {
		$enemy->update($self);
	}
}	

sub draw {
	my $self = shift;

	foreach my $sprite (@sprites) {
		$sprite->draw($self);
	}
	foreach my $enemy (@enemies) {
		$enemy->draw($self);
	}
}


sub add_sprite {
	my ($self, $sprite) = shift;

	push (@sprites, $sprite);
}
	
sub add_enemy {
	my ($self, $enemy) = shift;

	push (@enemies, $enemy);
}

1;	
