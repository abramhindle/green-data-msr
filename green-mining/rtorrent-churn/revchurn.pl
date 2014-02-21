#!/usr/bin/perl
use strict;
use Cwd qw(abs_path getcwd);
my $base =  abs_path(getcwd());
my $dumpdir = $base . "/tarballs";
my $exdir = $dumpdir . "/extract";
mkdir($dumpdir);
mkdir($exdir);
my ($rev1, $rev2) = @ARGV;
die "Missing extracted revision! $rev1" unless (-e "$exdir/$rev1" || -e "$dumpdir/$rev1");
die "Missing extracted revision! $rev2" unless (-e "$exdir/$rev2" || -e "$dumpdir/$rev2");
extract($rev1) unless -e $rev1;
extract($rev2) unless -e $rev2;
chdir($exdir);
sys("perl $base/churn.pl $rev1 $rev2");

sub extract {
    my ($rev) = @_;
    chdir($exdir);
    warn "Extracting $rev";
    #mkdir($exdir."/".$rev);
    #chdir($exdir."/".$rev);
    sys("tar zxf $dumpdir/$rev");
}

sub sys {
	warn @_;
	system(@_) == 0 or die "system @_ failed: $?";
}
