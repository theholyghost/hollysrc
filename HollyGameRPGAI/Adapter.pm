### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::Adapter;

sub Adapter 
{
	my ($class, $provider) = @_;
	$self = { provider => $provider, };
	bless $self, ref($class) || $class;
}	

