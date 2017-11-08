#!/usr/bin/perl

### prints type of file

unless defined(ARGV[0]) { system ("/usr/bin/file " . @ARGV[0]) }; 
