### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::Sprite;

sub Sprite {
	my ($class,$x,$y,$w,$h) = shift;

	### fill it with subclass
	my $self = { $box => Box->Box($x,$y,$w,$h), $imagelibrary = ImageLibrary->new };

	bless $self, ref($class) || $class;
}

sub draw {
	my $self = shift;

	### subclass responsability
}	

sub update {
	my $self = shift;

	### subclass responsability
}


1;
