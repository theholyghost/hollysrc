sub Engine
{
	my $class = shift;

	my $matrix = (Matrix4(), Matrix4(), Matrix4(), Matrix4());

	bless $self, $class;
}

sub translateX
{
	my ($self, $vector4) = shift;
	return ($matrix[0] + $vector4);
}

sub translateY
{
	my ($self, $vector4) = shift;
	return ($matrix[1] + $vector4);
}

sub translateZ
{
	my ($self, $vector4) = shift;
	return ($matrix[2] + $vector4);
}

sub rotate
{
	my ($self, $vector4) = shift;

	return ($matrix[0] * $matrix[1] * $matrix[2] * $matrix[3] * $vector4);
}

sub rotateOverX
{
	my ($self, $vector4) = shift;

	return ($matrix[0] * $vector4);
}

sub rotateOverY
{
	my ($self, $vector4) = shift;

	return ($matrix[1] * $vector4);
}

sub rotateOverZ
{
	my ($self, $vector4) = shift;

	return ($matrix[3] * $vector4);
}


