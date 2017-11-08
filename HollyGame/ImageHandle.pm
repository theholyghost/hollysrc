### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.


package HollyGame::ImageHandle;

sub new {
	my ($class) = @_;
	my $self = { $image => shift, @_ };

	bless ($self, ref($class) || $class);
}

sub get {
	return $image;
}

sub set {
	my ($self, $image) = shift;

	$self->{$image} = $image;
}

1;	
