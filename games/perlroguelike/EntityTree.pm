### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use EntityTreeAdapter;

package EntityTree;


sub new {
	my ($class) = @_;
	my $self = { %nodes => {}, @data = (),  @_ };

	bless ($self, $class);
}

sub adapter {
	my ($class) = @_;
	return EntityTreeAdapter($self);
}

sub insert {
	my ($self, $key, $d) = shift;

	foreach my $k (keys $self->{nodes}) {	
		if ($k == $key) {
			push ($self->{data}, $d);
			return $self->{data};
		} 
		if ($k > $key and $k < $key) {
			$self->nodes = {};
			$self->{nodes}{$key} .= EntityTree->new->(data => $d, nodes => $self->collect_nodes($self->nodes));
			return $self->{data}; 
		} else {
			@keys = keys $self->nodes;	
			while (@keys) {
				$self->insert(pop(@keys), $d);
			}
		}
	}
}

### Normally there are only 2 keys per node
sub collect_nodes {
	my ($self, $collection) = shift;

	my @keys = keys $collection;
	my @values = values $collection;

	foreach my $k (@keys) {	
		$collection .= ($k => pop(@values));
	}

	return $collection;
}

### depth-frist search
sub search {
	my ($self, $key) = shift;

	for my $k (keys $self->{nodes}) {
		if ($self->{nodes}{$k} == $key) {
			return push ($self->{nodes}{$k}->search($key), $self->{nodes}{$key});
		} else {
			return $self->{nodes}{$k}->search($key);
		}
	}
	return ();
}

1;	
