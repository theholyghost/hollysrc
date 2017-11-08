#!/usr/bin/perl
### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use SDL;
###use SDL::TTFont;
use SDL::Surface;
use SDL::Rect;
use SDLx::App;

use lib "/home/holyghost/perl5/hollysrc/";

use HollyGame::ImageLibrary; 

my $app = new SDLx::App(             -title => "Perl Game",
                        ###-icon => "",
                        -width => 800, 
                        -height => 600);

my $screenrect = new SDL::Rect -width => 800, -height => 600;

my $openingover = 0;
my $gameover = 0;

### opening screen

$openingfont = new SDL::TTFont ( -proto => $proto, 
				-name => "Times New Roman",
				-size => 14 ); 
$openingimage = new SDL::Surface(-name=>"./images/openingscreen.jpg");
$openingimage->blit($screenrect, $app, $screenrect);	

###$openingfont->print($openingimage, 10,10, "You arrive at the tavern,";
###$openingfont->print($openingimage, 10,30, "after a long journey you need rest.";

$app->flip;

while (!$openingover) {
	$event = SDL::Event->new();
	$event->wait();
	
	if ($event->type() == SDL_KEYDOWN) { 
		$openingover = 1;
	}

}	

### main game loop

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
	}
}

print "Exiting game ... ";
