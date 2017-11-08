### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameAI::AIInterface;

our @ISA = "Interface";

sub AIInterface {
	my $class = shift;
	$self = $class->SUPER::Interface(qw(@_)); ### e.g. qw(swim fly)
	bless $self, ref($class) || $class;


}

