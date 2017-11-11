### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::MessagingSystem;
use lib "../HollyGameRPGAI";

sub MessagingSystem {
	my $class = shift;

	$self = {
	};

	return bless $self, ref($class) || $class;
}

sub message_p {
	my ($self, $message) = shift;

	$message->try($self);	
}

