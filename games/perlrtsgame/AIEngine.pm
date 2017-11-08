### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

### a path of forlorn key_syms which trace you for the RTS AI of the game

package AIEngine;

sub new {
	my ($class) = @_;
	my $self = { $entities = Entities->new , @_ };

	bless ($self, $class);
}

sub attach {
	my ($self,$entity) = shift;		

	$entity->attach_to($entities);
}

sub detach {
	my ($self,$entity) = shift;		

	$entity->detach_to($entities);
}


1;	
