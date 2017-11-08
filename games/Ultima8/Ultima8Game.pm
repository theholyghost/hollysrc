### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";

package Ultima8::Ultima8Game;

use SDL;
use SDL::Video;
###use SDL::TTFont;
use SDL::Surface;
use SDL::Rect;
use SDL::Event;
use SDL::Events;

use MapRoomBeach;
use Avatar;
our @ISA = "HollyGame::Game";

sub Ultima8Game {
	my ($class, $screen) = @_;

	$self = $class->SUPER::Game();
	$self->{screen_width}  = 800;
	$self->{screen_height} = 600;
	$self->{screen} = $screen;
	$self->{screenrect} = SDL::Rect->new(0,0,800,600);
	$self->{room} = Ultima8::MapRoomBeach->MapRoomBeach($self->{screen});	
	$self->{Avatar} = Ultima8::Avatar->Avatar($self->{screen});	
###	$self->{font} = new SDL::TTFont ( -proto => $proto, 
###				-name => "Times New Roman",
###				-size => 12 ); 
	bless $self, ref($class) || $class;
	return $self;
}

sub mainloop {
	my ($self) = shift;

###	my $gameover = 0;

	while (1) {
		my $event = SDL::Event->new();
		SDL::Events::pump_events();
		SDL::Events::poll_event($event);
	
		if ($event->type() == SDL_KEYDOWN) {
			if ($event->key_sym == SDLK_ESCAPE) {
				return 0;
			}	
			if ($event->key_sym == SDLK_LEFT) {
			###	$self->{Avatar}->move(-1,0,0);
			}	
			if ($event->key_sym == SDLK_RIGHT) {
			###	$self->{Avatar}->move(1,0,0);
			}	
			if ($event->key_sym == SDLK_UP) {
			###	$self->{Avatar}->move(0,-1,0);
			}	
			if ($event->key_sym == SDLK_DOWN) {
			###	$self->{Avatar}->move(0,1,0);
			}
			
		}
		$self->{room}->update();
		$self->{room}->draw();
		SDL::Video::update_rect( $self->{screen}, 0, 0, $self->{screen_width}, $self->{screen_height} );
	}
}
