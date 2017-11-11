### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::Message;
use lib "../HollyGameRPGAI";

sub Message {
	my $class = shift;

	$self = {
		messageparts => {};			
	};

	return bless $self, ref($class) || $class;
}

sub add_to_message {
	my ($self, $addition) = shift;

	%{$messageparts}{$addition} = {};
}

sub try
{
	my $self = shift;

		
}
