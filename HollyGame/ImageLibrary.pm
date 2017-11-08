### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.


package HollyGame::ImageLibrary;

sub ImageLibrary {
	my ($class) = shift;
	my $self = { stack => (), ptrh => 0, index => -1, @_ };

	bless $self, ref($class) || $class;
}


sub push {
	my ($self, $element) = @_;
	push( @ { $self->{stack} } , $element);	
	$self->{ptrh}++;
	return 0;
}

sub pop {
	my ($self) = shift;
	return $self->{stack}[$self->{ptrh}--];	
}

sub index {
	my ($self, $idx) = shift;

	return $self->{stack}[$idx];	
}

sub get {
	my ($self) = shift;

	if ($index >= length($self->{stack})) {
		$index = 0;
	}
	
	return $self->{stack}[$index++];
}

1;	
