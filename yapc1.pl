#!/usr/local/bin/perl -wT

my $i = 1;

while(print @ARGV[$i++]) {
	if ($i >= length(@ARGV)) {
		print "conclusion = " . @ARGV[$i];
		last;
	}
}  
