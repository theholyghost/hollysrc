### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";
use Player; 

package Wycadia::Aldhebrand;

our @ISA = "HollyGame::Player";

sub Aldhebrand {
	my ($class, $screen) = @_;
	my $self = $class->SUPER::Player;

###	my $image1 = new SDL::Surface(-name=>"./images/player.jpg");
###	$self->{leftimagelibrary}->push{$image1};
###	my $image2 = new SDL::Surface(-name=>"./images/player2.jpg");
###	$self->{rightimagelibrary}->push{$image2};
###	my $image3 = new SDL::Surface(-name=>"./images/player3.jpg");
###	$self->{upimagelibrary}->push{$image3};
###	my $image4 = new SDL::Surface(-name=>"./images/player3.jpg");
###	$self->{downimagelibrary}->push{$image4};

	bless $self, $class;
	return $self;	
}

sub update {
	my $self = shift;
	
}

sub draw {
	my ($self) = shift;

###	SDL::Video::blit_surface( $self->{background}, SDL::Rect->new(0, 0, $self->{background}->w, $self->{background}->h), 
###                           $self->{screen},  SDL::Rect->new(0, 0, $self->{screen}->w,  $self->{screen}->h) );

}
