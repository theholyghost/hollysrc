package orbital2::TimeDelta;

sub TimeDelta
{
	my ($class) = shift;

	bless $self, $class;
	return $self;
}

sub Tick
{
	my ($class) = shift;

	my ($seconds, $interval, $milliseconds) = shift; ### 2 args 

	my $hope = undef;
	bless $self, $class;
}

sub TickCalculate
{
	my ($self) = shift;
	return my $self->hope = $self->$seconds / $self->interval

}
