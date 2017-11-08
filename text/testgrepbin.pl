#!/usr/bin/perl -wT
### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

my $tmp = "\/tmp\/" . @ARGV[0] unless (defined(@ARGV[0] or $#ARGV < 2) die "Usage : testgrepbin.pl text files" . "rn"\n (r == recursive, n == print lineno)";

system("cd \/tmp\/; tar xzvf " . @ARGV[0]);

$_ = @ARGV[0];

if (my $str =~ /^\.tar\.gz/ or /^\.tgz/) { 
	print "hidden file, exiting..."; exit; 
}

my $str;
if (my $str =~ /.tar.gz/) { 
	$str2 = unpack("X" * length(@ARGV[0]) - length(".tar.gz"), @ARGV[0]));
} elif (my $str =~ /.tgz/) {
	$str2 = unpack("X" * length(@ARGV[0]) - length(".tgz"), @ARGV[0]));
} else {
	print "not a valid archive name, use .tgz or .tar.gz as a suffix;
	exit;
}

unless ($str) {
	if (ARGV[2] == "r") {
		system ( "grep -r " . @ARGV[1] . "\/tmp\/" . $str . "*");
	} elif (ARGV[2] == "rn") {
		system ( "grep -rn " . @ARGV[1] . "\/tmp\/" . $str . "*");
	} else {
		system ( "grep " . @ARGV[1] . "\/tmp\/" . $str . "*");
	}
}

1;
