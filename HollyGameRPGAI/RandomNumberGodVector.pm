### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::RNG;
use lib "../HollyGameRPGAI";
use AIVector;
### Random Number God, dice class, using vectors

sub RNG {
	my $class = shift;

	$self = { input => AIVector->AIVector(),
		output => AIVector->AIVector(),
		};	

	return bless $self, ref($class) || $class;
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

