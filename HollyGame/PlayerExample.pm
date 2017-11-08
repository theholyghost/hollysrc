### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::PlayerExample;

our @ISA = "HollyGame::Player";

sub PlayerExample {
	my $class = shift;
	my $self = $class->SUPER::Player;
	$self->$app = shift;

	my $image1 = new SDL::Surface(-name=>"./images/player.jpg");
	$self->{imagelibrary}->push($image1);
	my $image2 = new SDL::Surface(-name=>"./images/player2.jpg");
	$self->{imagelibrary}->push($image2);
	my $image3 = new SDL::Surface(-name=>"./images/player3.jpg");
	$self->{imagelibrary}->push($image3);

	return bless $self, ref($class) || $class;	
}

sub update {
	my $self = shift;
	
}

sub draw {
	my $self = shift;
	my $image = $imagelibrary->get;
	$image->blit($screenrect, $self->{app}, $screenrect);	
}
