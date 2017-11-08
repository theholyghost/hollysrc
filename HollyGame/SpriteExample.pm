### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::SpriteExample;

our @ISA = "HollyGame::Sprite";

sub SpriteExample {
	my $class = shift;
	my $self = $class->SUPER::Sprite(shift,shift,shift,shift);
	$self->$app = shift;

	my $image1 = new SDL::Surface(-name=>"./images/larrysprite1.jpg");
	$self->{imagelibrary}->push($image1);
	my $image2 = new SDL::Surface(-name=>"./images/larrysprite2.jpg");
	$self->{imagelibrary}->push($image2);
	my $image3 = new SDL::Surface(-name=>"./images/larrysprite3.jpg");
	$self->{imagelibrary}->push($image3);
	$self->{screenrect} = new SDL::Rect -width => $self->{box}->{w}, -height => $self->{box}->{h};

	return bless $self, ref($class) || $class;	
}

sub update {
	my $self = shift;
	
	$self->{x}++;
}

sub draw {
	my ($self) = shift;
	my $image = $imagelibrary->get;
	$image->blit($screenrect, $self->{app}, $screenrect);	
}
