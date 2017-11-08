#!/usr/bin/perl
### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use SDL;
use SDL::Surface;


use lib "/home/holyghost/perl5/hollysrc/";

use HollyGame::ImageLibrary; 
use AppFunctor;

my $appf = AppFunctor->new;
$appf->run();

print "Exiting game ... ";
