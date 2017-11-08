### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use SDL;
use SDL::Surface;

package HollyGame::Image;
our @ISA = "SDL::Surface";

sub new {
	my ($class) = @_;
	my $self = {-name => shift, @_ };

	bless ($self, ref($class) || $class);
	return $self;
}

1;	
