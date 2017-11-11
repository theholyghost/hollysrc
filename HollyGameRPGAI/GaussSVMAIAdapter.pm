### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::GaussSVMAIAdapter;

sub GaussSVMAIAdapter 
{
	my ($class, $provider) = @_;
	$self = $class->SUPER::Adapter->Adapter($provider);
	bless $self, ref($class) || $class;
}	

sub calculate_on_vectors
{
	my ($self, $vector1, $vector2) = @_;
	return $self->{provider}->calculate_on_vectors($vector1, $vector2);	
}


