#!/usr/bin/perl
use strict;
use List::Util qw(min max sum);
use Cwd qw(abs_path getcwd);
my $base =  abs_path(getcwd());
my $dumpdir = $base . "/tarballs";
my %revs = ();
while (my $line =  <>) {
	chomp($line);
	my ($revision) = my @args = split(/[\s\t]+/,$line);
	warn "$revision";
        $revs{$revision} = $revision;
}
my @revs = sort { $revs{$a} cmp $revs{$b} } (keys %revs);
my @files = ();
print "churns:$/\tmkdir churns$/";
for my $i (1..$#revs) {
    my $rev1 = $revs[$i];
    my $rev2 = $revs[$i - 1];
    my $file = "churns/$rev2-$rev1.csv";
    push @files, $file;
    print "$file:$/";
    print "\tperl revchurn.pl $rev2 $rev1 | tee $file $/";
}

print "$/$/all: all.csv ".join(" ",@files).$/;

print "$/$/all.csv: ".join(" ",@files).$/;
print "\thead -n 1 ".$files[0]." > all.csv$/";
while(@files) {
    my $i = 0;
    my @f = ();
    while ($i++ < 50 && @files) {
        push @f, (shift @files);
    }
    print "\ttail -q -n 1 ".join(" ",@f)." >> all.csv$/";
}


exit(0);
for my $i (2..$#revs) {
    for my $j (0..($i-2)) {
        my $rev1 = $revs[$i];
        my $rev2 = $revs[$j];
        print "churn.pl $rev2 $rev1$/";
    }
}
#for my $rev1 (@revs) {
#    for my $rev2 (@revs) {
#        if (($revs{$rev1} cmp $revs{$rev2}) == 1) {
#            print "churn.pl $rev2 $rev1$/";
#        }
#    }
#}
# for my $elm (@data) {
#     my ($binary, $date, $release, $revision, $repo) = @$elm;
#         for my $elm2 (@data) {
#             my ($binary2, $date2, $release2, $revision2, $repo2) = @$elm2;
#             if (($date cmp $date2) == 1) {
#                 print "churn.pl $revision2 $revision$/";
#             }
#         }
# }
