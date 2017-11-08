### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use SDL;
###use SDL::App;
use SDL::Surface;
use SDL::Rect;
use SDLx::App;

use Entities;

package AppFunctorDelegate;

sub new {
	my ($class) = @_;
	my $self = { $app => new SDLx::App->new( -title => "Perl RTS Game",
					-width => shift, -height => shift
				@entities => Entities->new,
		     $screenrect = new SDL::Rect -width => 800, -height => 600),
 				, @_ };
	bless ($self, $class);
}

sub flip
{
	my ($self) = shift;

	$self->{$app}->flip;
}

sub blit {
	my ($self, $imagelib) = shift;

	$self->{$imagelib}->get->get->blit($self->{$screenrect}, 
					$self->{$app}, $self->{$screenrect});	
}

1;	
