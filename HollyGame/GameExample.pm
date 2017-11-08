### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use SDL;
###use SDL::TTFont;
use SDL::Surface;
use SDL::Rect;
use SDLx::App;

package HollyGame::GameExample;

our @ISA = "HollyGame::Game";

sub GameExample {
	my $class = shift;
	my $self = {};
	bless $self, $class;

	my $app = new SDLx::App(             -title => "Perl Game",
                        ###-icon => "",
                        -width => 800, 
                        -height => 600);
	$self = $class->SUPER::Game(shift,$app);
	$self->{screenrect} = new SDL::Rect -width => 800, -height => 600;
	$self->{font} = new SDL::TTFont ( -proto => $proto, 
				-name => "Times New Roman",
				-size => 12 ); 

	$self->{room} = MapRoomExample->MapRoomExample;	
	$self->{player} = PlayerExample->PlayerExample;	
}

sub gameloop {
	my ($self) = shift;
	### subclass responsability

	my $gameover = 0;

	while (!$gameover) {
		$event = SDL::Event->new();

		$event->wait();
	
		if ($event->type() == SDL_KEYDOWN) {
			if ($event->key_sym == SDLK_ESCAPE) {
				$gameover = 1;
			}	
			if ($event->key_sym == SDLK_LEFT) {

			}	
			if ($event->key_sym == SDLK_RIGHT) {

			}	
			if ($event->key_sym == SDLK_UP) {

			}	
			if ($event->key_sym == SDLK_DOWN) {

			}
			$self->{room}->update();
			$self->{room}->draw();
			$self->{app}->flip;
			
		}
	}
}
