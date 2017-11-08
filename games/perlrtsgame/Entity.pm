### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

### a path of forlorn key_syms which trace you for the RTS AI of the game

use SDL::Surface;

use HollyGame::ImageLibrary;

package Entity;

sub new {
	my ($class) = @_;
	my $self = { $stimlib = ImageLibrary->new, @_ };

	bless ($self, $class);
}

sub attach_to {
	my ($self, $entitites) = shift;

	push ($entities->{elist}, $self);
}

sub detach_to {
	my ($self, $entitites) = shift;

	delete $entities->{elist}[$self];	
}

sub blit {
	my ($self, $appfd) = shift;

	$appfd->blit($stimlib);	
}

1;	
