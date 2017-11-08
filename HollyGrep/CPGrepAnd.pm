### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package CPGrepAnd;
our @ISA = "CPGrep";

sub new {
	my ($class, $andl) = @_;

	bless ($self, $class);
}

sub grep {

	my ($string) = shift;

	for my $el ($self->{andl}) {
		if ($_ = $el and not /$string/) {
			return 	-1;
		}
	}		
	return $self->{andl};	
}
	 
1;	
