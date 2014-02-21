#!/usr/bin/perl
use strict;
use Cwd qw(abs_path getcwd);
my $base =  abs_path(getcwd());
my $dumpdir = $base . "/tarballs";
mkdir($dumpdir);
my $repo = "$ENV{HOME}/src/vuze/";
while (my $line =  <>) {
	chomp($line);
	my ($svnrev, $revision) = my @args = split(/[\s\t]+/,$line);
	warn "$svnrev -- $revision";
	chdir($base);
	chdir($repo);
	#my $file = "$dumpdir/${svnrev}_${revision}.tgz";
	my $file = "$dumpdir/${revision}.tgz";
	my $cmd = "git archive --format tgz -o $file $revision";
	if (-e $file) {
		warn "Skipping $file";
		next;
	}
	sys($cmd);
}
sub sys {
	warn @_;
	system(@_) == 0 or die "system @_ failed: $?";
}
