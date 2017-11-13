### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub Vertex 
{
	my ($class,$r,$i,$j,$k) = @_;

	my $self = { r => $r, i => $i, j => $j, k => $k, };

	bless $self, ref($class) || $class;
}

sub getr
{
	my $self = shift;

	return $self->{r};
} 

sub geti
{
	my $self = shift;

	return $self->{i};
} 

sub getj
{
	my $self = shift;

	return $self->{j};
} 

sub getk
{
	my $self = shift;

	return $self->{k};
} 

sub setr
{
	my ($self,$r) = @_;

	$self->{r} = $r;
}

sub seti
{
	my ($self,$i) = @_;

	$self->{i} = $i;
}

sub setj
{
	my ($self,$j) = @_;

	$self->{j} = $j;
}

sub setk
{
	my ($self,$k) = @_;

	$self->{k} = $k;
}

sub norm
{
	my ($self) = shift;

	return sqrt ( $self->{r} * $self->{r}, 
			self->{i} * $self->{i}, 
			$self->{j} * $self->{j}, 
			$self->{k} * $self->{k},
			);
}
 
