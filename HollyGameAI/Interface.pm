### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

### with thanks to gregorovius from perlmonks

package HollyGameAI::Interface;

use Carp;

sub Interface {
	my $class = shift;
	my $self = {inheritors => (), 
			abstract_methods => shift, ### e.g. qw(swim fly) 
	}; 
	bless $self, $class;
}

sub import {
	my $method = caller;
	push (@{ $self->{inheritors}}, $method);
}

sub INIT {
	my $bad = 0;

	for my $class ($self->{inheritors}) {
		for my $meth ($self->{abstract_methods}) {
			no strict 'refs';	
			unless (defined &{"${class}::$meth"}) {
				$bad = 1;

				warn "HolyGameAI : Class $class should implement 
					HolyGameAI Interface
					but does not define $meth.\n";
			}
		}
	}
	croak "HollyGameAI : Source compilation aborted at interface binding time\n" if $bad;
}
