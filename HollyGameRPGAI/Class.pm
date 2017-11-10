### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameRPGAI::Class;

sub Class {
	my ($class) = @_;

	$self = { strength, dexterity,intelligence,wisdom,constitution,charisma }; 

	bless $self, ref($class) || $class;
}

sub gen
{
	my ($self) = @_;

	$self->{strength} = rand(19);
	$self->{dexterity} = rand(19);
	$self->{intelligence} = rand(19);
	$self->{wisdom} = rand(19);
	$self->{consitution} = rand(19);
	$self->{charisma} = rand(19);

}
