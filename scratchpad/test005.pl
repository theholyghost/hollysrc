#!/usr/bin/perl -wT

use strict;
use 5.14;

### execute a program with one command line argument

system(@ARGV[0] . " " . @ARGV[1]);
