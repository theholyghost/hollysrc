### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::RNG;
use lib "../HollyGameRPGAI";
use XYZZY;
### Random Number God, dice class, using vectors

sub RNG {
	my $class = shift;

	$self = { xyzzy0 => XYZZY->XYZZY(),
		xyzzy00 => XYZZY->XYZZY(),
		sigma => 1,
		positionsvm => GaussSVMAI->adapt(), };	

	return bless $self, ref($class) || $class;
}

sub set_input
{
	my ($self, $v) = @_;

	$self->{xyzzy0} = $v;
}

sub set_output
{
	my ($self, $v) = @_;

	$self->{xyzzy00} = $v;
}

sub change_output_position_by_x
{
	my $self = shift;
	### FIXME
}
 
sub calculate_on_vectors
{
	my $self = shift;
	return $self->{positionsvm}->calculate_on_vectors($self->sigma, $self->{xyzzy0}, $self->{xyzzy00});
}

sub rollD1 {
	my $self = shift;
	return rand(1) + 1;
}

sub rollD3 {
	my $self = shift;
	return rand(3) + 1;
}

sub rollD6 {
	my $self = shift;
	return rand(6) + 1;
}

sub rollD10 {
	my $self = shift;
	return rand(10) + 1;
}

sub rollD20 {
	my $self = shift;
	return rand(20) + 1;
}

