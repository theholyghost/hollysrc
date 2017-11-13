### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

sub  Holly3DFileFormat 
{
	my ($class, $filename) = @_;

	my $self = { filename => $filename, bin = (), };

	bless $self, ref($class) || $class;
}

sub read
{
	my $self = @_;

	open FILEH, "<" . $filename;

	while (<FILEH>) {
		chomp;
		push($self->bin, Point->Point());
	}
}
