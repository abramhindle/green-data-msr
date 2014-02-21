#!/usr/bin/perl
use strict;
use Term::ANSIColor;
use List::Util qw(sum);
my ($settings,$dir1,$dir2);
if (@ARGV == 3) {
    ($settings,$dir1,$dir2) = @ARGV;
} elsif (@ARGV == 2) {
    ($dir1,$dir2) = @ARGV;
} else {
    die "churn.pl settings.pl directory1 directory2";
}

($dir1,$dir2) = map { s/\.tar.gz//; $_  } ($dir1,$dir2);

my @patterns = ();
my @default_patterns = ( qr/\.java$/, qr/\.cpp$/, qr/\.c$/, qr/\.h$/, qr/\.js$/ );
# firefox derived
push @default_patterns, qr/\.(xslt|php|awk|perl|vbs|sed|cs|ksh|bash|m|cgi|asm|hxx|pm|java|py|sh|pl|cc|xul|idl|c|cpp|h|js)$/;
require $settings if $settings;
@patterns = @default_patterns unless @patterns;
sub matches {
    my ($str,@patterns) = @_;
    foreach my $pattern (@patterns) {
        if ($str =~ $pattern) {
            return 1;
        }
    }
    return 0;
}


my %files = ();
my %add = ();
my %remove = ();
my $lastfile = undef;


my @lines = `diff -r -u $dir1 $dir2 | egrep '^[+-]'`;
chomp(@lines);
foreach my $line (@lines) {
    if ($line =~ /^\+\+\+ ([^ \t]+)[\t ]/) {
        my $file = $1;
        if (matches($file, @patterns)) {
            $files{$file}++;
            $lastfile = $file;
        } else {
            $lastfile = undef;
        }
    } elsif (defined $lastfile) {
        # skip the file if it doesn't match
        if ($line =~ /^\-\-\- ([^ ]+) /) {
            # ignore
        } elsif ($line =~ /^\-/) {
            $remove{$lastfile}++;
        } elsif ($line =~ /^\+/) {
            $add{$lastfile}++;
        } else {
            warn "Why do we see: $line$/";
        }
    }
}

my $linesadded = sum(values %add) + 0;
my $linesremoved = sum(values %remove) + 0;

my $nfiles = scalar(keys %files) + 0;
my $churn_count = sum(values(%files)) + 0;

my $loc = loc(keys %files);
my @files = count_files($dir2, @patterns);
my $file_count = scalar(@files) + 1;
my $loc = dir_loc($dir2, @files);

my $total_churn = $linesadded + $linesremoved + 0;
my $loc_churn = $total_churn / (1.0 * $loc) + 0;
my $file_churn = $nfiles / $file_count + 0;

my @header = ("DIR1","DIR2","ADD","REMOVE","Churn","TotalFiles","TouchedFiles","FileChurn","ChurnCount","LOC","ChurnLOC");
print join("\t",@header),$/;
print join("\t", $dir1,$dir2, $linesadded, $linesremoved, $total_churn,$file_count, $nfiles,$file_churn,$churn_count, $loc,$loc_churn),$/;


sub bluewarn {
    warn color("blue"),@_,color("reset");
}
sub yellowwarn {
    warn color("yellow"),@_,color("reset");
}
sub count_files {
    my ($dir, @patterns) = @_;
    chdir($dir);
    my @lines = `find . -type f`;
    my @files = grep { matches( $_ , @patterns ) } @lines;
    return @files;
}
sub dir_loc {
    my ($dir, @files) = @_;
    my $loc = 0;
    for my $file (@files) {
        $loc += loc( $file );
    }
    return $loc;
}
sub loc {
    my $file = shift;
    open(my $fd, $file);
    my $lines = 0;
    while(my $line = <$fd>) {
        $lines++;
    }
    close($fd);
    return $lines;
}
sub sys {
    my @args = @_;
    warn join(" ", @args);
    return system(@args);
}
