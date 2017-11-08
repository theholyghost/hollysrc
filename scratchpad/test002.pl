#!/usr/bin/perl -wT

use 5.14;
use strict;


### this prints the second command line argument if it matches somewhere
### in the file.

if ($#ARGV <= 1) {
	print_usage();
	exit;
} 

my $fh = open (@ARGV[0], O_RDONLY) 

while (<$fh>) {
	my $l =~ /@ARGV[1]/;

	unless (defined ($l)) print $_;
}	

sub print_usage()
{
	print "Usage : program filename grepword (to be read)";
}
1;
