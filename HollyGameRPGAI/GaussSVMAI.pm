### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::GaussSVMAIVector;

our @ISA = "HollyRPGAI::GaussSVM";
 
sub GaussSVMAI
{
	my ($class, $s) = @_;
	$self = $class->SUPER::GaussSVM($s); 
	bless $self, ref($class) || $class;
}	

sub adapt 
{
	my ($self) = @_;
	return GaussSVMAIAdapter->GaussSVMAIAdapter($self);
}	

sub calculate_on_vectors
{
	my ($self, $sigma, $vector1, $vector2) = @_;

	my $vector = $vector1->minus($vector2);
	return (- $vector->norm / exp( 2 * $sigma * $sigma ));
}

