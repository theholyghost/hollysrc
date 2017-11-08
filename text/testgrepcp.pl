#!/usr/bin/perl -wT
### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

my $str = unpack("X" * length(@ARGV[0]), ARGV[0]);
my $match = undef; 

for (my $i = 0; $i < length($str); $i++) {
	for (my $j = 0; $j < length($match); $j++) {
		if ($str =! /$match[$j]/) {
			my $match .= $str and last;
		}
	}
}

1; 
