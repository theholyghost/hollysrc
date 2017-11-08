#!/usr/bin/perl -wT

use strict;

unless (define @ARGV[0] and defined @ARGV[1] or defined @ARGV[2]) or die "Usage : program filename pattern";  

my $fh = open(@ARGV[0], O_RDONLY);

unless (defined $fh) or die "filename could not be opened";  
 

while (<$fh>) {
	s/@ARGV[1]/@ARGV[2]/;
	
	print $_;
}

1;
