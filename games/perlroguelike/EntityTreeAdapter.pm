### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package EntityTreeAdapter;


sub new {
	my ($class) = @_;
	my $self = { $tree = shift,  @_ };

	bless ($self, $class);
}


sub insert {
	return $self->{tree}->insert($key, $d);
}

sub search {
	return $self->{tree}->search($key);
}

1;	
