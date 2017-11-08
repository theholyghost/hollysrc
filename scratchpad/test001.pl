#!/bin/perl -wT

use strict;

while (<STDIN>)
{
	/perl5/;

	print $_;
}

