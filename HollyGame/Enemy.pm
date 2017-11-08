### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::Enemy;

our @ISA = "HollyGame::Sprite";

sub Enemy {
	my $class = shift;

	my $self = {};
	bless $self, class;  
	$self = $self->SUPER::Sprite(shift,shift,shift,shift);

	### fill it with subclass
	my $self->{box} = Box->Box($x,$y,$w,$h);
	my $self->{$imagelibrary => ImageLibrary->new};
	my $self->{$app} = shift;

	return $self;
}

sub draw {
	my $self = shift;
	### subclass responsability
}	

sub update {
	my $self = shift;
	### subclass responsability
}
