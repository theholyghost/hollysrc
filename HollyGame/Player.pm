### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGame::Player;

use lib "../HollyGame";

use Box;
use ImageLibrary;

sub Player {
	my ($class,$x,$y,$w,$h) = shift;

	### fill it with subclass
	my $self = { $box => HollyGame::Box->Box($x,$y,$w,$h), 
			$dx => 0, $dy = 0, $dxy = 0,
			$leftimagelibrary = HollyGame::ImageLibrary->ImageLibrary, 
			$rightimagelibrary = HollyGame::ImageLibrary->ImageLibrary, 
			$upimagelibrary = HollyGame::ImageLibrary->ImageLibrary, 
			$downimagelibrary = HollyGame::ImageLibrary->ImageLibrary }; 
	
	bless $self, ref($class) || $class;
}

sub move {
	my ($class,$ddx,$ddy,$ddxy) = shift;

	$self->{$dx} = $ddx; 
	$self->{$dy} = $ddy; 
	$self->{$dxy} = $ddxy;

	$self->{x} += $self->{dx}; 
	$self->{y} += $self->{dy}; 
}

sub draw {
	my $self = shift;

	### subclass responsability
}	

sub update {
	my $self = shift;

	### subclass responsability
}


1;
