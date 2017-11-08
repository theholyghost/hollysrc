#!/usr/bin/perl
### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use SDL;
###use SDL::TTFont;
use SDL::Surface;
use SDL::Rect;
use SDLx::App;

use lib "../../HollyGame";
use Game;
use lib "../Ultima8";
use Ultima8Game;

my $screen_width = 800;
my $screen_height = 600;
SDL::init(SDL_INIT_EVERYTHING);
$screen  = SDL::Video::set_video_mode($screen_width, $screen_height, 32, SDL_SWSURFACE);

my $game = Ultima8::Ultima8Game->Ultima8Game($screen);
$game->mainloop;
