#!/usr/bin/perl -wT
### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

my $nil = 0;

$_ = $nil;

while (<>) {
	my $line = $_;
	my $a = undef;

	for (my $i = 0; $i < length / 4; $i++) {
		$a .= unpack("XXXX", $_[$i], $_[$i+1], $_[$i+2], $_[$i+3]);

		if ($a[length($a)-1] == " ") {
			my $m =~ /@ARGV[0]/;

			unless ($m and $_ = $nil and $a = undef) next;
			print "$line" and last;
		}
	}	
	$_ = $nil;
}

1;
