### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package HollyGameAI::RNG;

### Random Number God, dice class

sub RNG {
	my $class = shift;

	my $self = { dx => 0 };

	return bless $self, ref($class) || $class;
}

sub set {
	my ($self, $dxx) = @_;
	$self->{dx} = $dxx;
}	
	
sub rollDX {
	my $self = shift;
	return rand($self->{dx});
}

sub rollD1 {
	my $self = shift;
	return rand(1);
}

sub rollD3 {
	my $self = shift;
	return rand(3);
}

sub rollD6 {
	my $self = shift;
	return rand(6);
}

sub rollD10 {
	my $self = shift;
	return rand(10);
}

sub rollD20 {
	my $self = shift;
	return rand(20);
}

sub rollPreviousDX {
	my $self = shift;
	return rand($self->{dx});
}

sub roll {
	my ($self, $dxx) = @_;

	$self->set($dxx);

	given ($self->{dx}) {
		when ($_ = 0) {
			return 0;
		}
		when ($_ == 1) {
			return rollD1;
		}		
		when ($_ == 3) {
			return rollD3;
		}		
		when ($_ == 6) {
			return rollD6;
		}		
		when ($_ == 10) {
			return rollD10;
		}		
		when ($_ == 20) {
			return rollD20;
		}		
	}

	return 0;
}	
