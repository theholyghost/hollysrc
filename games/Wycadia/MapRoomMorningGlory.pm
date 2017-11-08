### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";

package Wycadia::MapRoomMorningGlory;
use MapRoom; 

our @ISA = "HollyGame::MapRoom";


sub MapRoomMorningGlory {
	my ($class, $screen) = @_;

	$self = $class->SUPER::MapRoom;
	$self->{exits} = ();
	$self->{screen} = $screen;
###	$self->{background} = new SDLx::Surface -width => 800, -height=> 600 ->load_BMP("./images/morningglory.bg.bmp");
	$self->{background} = SDL::Video::load_BMP("./images/morningglory.bg.bmp");
	$self->{screenrect} =SDL::Rect->new(0,0,800,600);

	###push ($self->{sprites}, ButterFlySprite($self->{app}));

	return bless $self, ref($class) || $class;
}

sub draw {
	my ($self) = shift;

	SDL::Video::blit_surface( $self->{background}, SDL::Rect->new(0, 0, $self->{background}->w, $self->{background}->h), 
                           $self->{screen},  SDL::Rect->new(0, 0, $self->{screen}->w,  $self->{screen}->h) );


#######	$self->SUPER::draw;
}

