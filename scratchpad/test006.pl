#!/usr/local/bin/perl -wT

while (<@ARGV[1]>) {
	chomp;

	if (s/@ARGV[2]/) {
		print;
	}			
};	
