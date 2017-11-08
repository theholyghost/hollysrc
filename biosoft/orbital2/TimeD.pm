package orbital2::TimeD;

sub new {
	my ($class,$d) = shift;
	my $self = {$td = $d};

	bless $self, $class;

	return $self;
}

