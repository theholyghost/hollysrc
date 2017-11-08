### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

### a path of forlorn key_syms which trace you for the RTS AI of the game

package KeyPath;

sub new {
	my ($class) = @_;
	my $self = { $path => (), @_ };

	bless ($self, $class);
}

1;	
