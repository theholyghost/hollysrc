### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use lib "../../HollyGame";
use Sprite; 

package Wycadia::ButterflySprite;

our @ISA = "Sprite";

sub ButterflySprite {
	my $class = shift;
	my $self = {};
	bless $self, $class;
	my $self = $self->SUPER::Sprite(shift,shift,shift,shift);
	$self->$app = shift;

	my $image1 = new SDL::Surface(-name=>"./images/butterflysprite1.png");
	$self->{imagelibrary}->push{$image1};
	my $image2 = new SDL::Surface(-name=>"./images/butterflysprite2.png");
	$self->{imagelibrary}->push{$image1};
	$self->{screenrect} = new SDL::Rect -width => $self->{box}->{w}, -height => $self->{box}->{h};

	return $self;	
}

sub update {
	my $self = shift;
		
	$self->{x}++;
}

sub draw {
	my $self = shift;
	my $image = $imagelibrary->get;
	$image->blit($self->{screenrect}, $self->{app}, $self->{screenrect});	
}
