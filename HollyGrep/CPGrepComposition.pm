### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package CPGrepComposition;
our @ISA = ("CPGrepNot", "CPGrepOr", "CPGrepAnd");  

sub new {
	my ($class, $string ) = @_;

	my $self = { composition => split //, $string };

	bless ($self, $class);
}

1;	
