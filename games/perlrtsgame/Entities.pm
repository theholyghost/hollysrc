### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package Entities;

sub new {
	my ($class) = @_;
	my $self = { @elist = (), @_ };

	bless ($self, $class);
}

sub update {
	my ($self, $key) = shift;

	for my $entity (@elist) {	
		$entity->update($key);
	}
}

sub blit
{
	my ($self, $appfd) = shift;

	for my $entity (@elist) {	
		$entity->blit($appfd);
	}
}
	
1;	
