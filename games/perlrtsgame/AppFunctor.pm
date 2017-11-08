### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package AppFunctor;
use AppFunctorDelegate;

sub new {
	my ($class) = @_;
	my $self = { $appfd = AppFunctorDelegate->new, @_ };

	bless ($self, $class);
}

sub run
{
	my ($self) = shift;

	my $over = 1;

	while (!$over) {
		$event = SDL::Event->new();
		$event->wait();


		unless ($event->type() != SDL_KEYDOWN) { if ($event->subkeyrun($event->key_sym) < 0) { last; } }

		$entities->update($event->key_sym);
		$entities->blit($appfd);	
		
		$appfd->flip;
	}
}

sub subkeyrun
{
	my ($self, $key) = shift;

	unless ($key != SDLK_ESCAPE) { return -1; }

}
	
1;	
