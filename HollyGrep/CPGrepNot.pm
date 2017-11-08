### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package CPGrepNot;
our @ISA = "CPGrep";

sub new {
	my ($class, $notl) = @_;

	bless ($self, $class);
}

sub grep {

	my ($string) = shift;

	for my $el (@notl) {
		if ($_ = $el and /$string/) {
			next;
		} else {
			return -1;
		}
	}		
	return $string;	
}
	 
1;	
