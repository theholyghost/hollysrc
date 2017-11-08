### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

package CPGrepOr;
our @ISA = "CPGrep";

sub new {
	my ($class, $orl) = @_;

	bless ($self, $class);
}

sub grep {

	my ($string) = shift;

	for my $el (@orl) {
		if ($_ = $el and /$string/) {
			next;
		} 	
	return $string;
}
	 
1;	
