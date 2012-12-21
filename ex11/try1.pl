#! /usr/bin/perl
use strict;
use File::Basename qw /basename/;
use File::Spec ();
use Path::Class;

my $name = "C:\\usr\\bin\\perl";
#my $name = "/usr/local/bin/perl";
my $basename = basename $name;
my $dirname = File::Basename::dirname $name;
my $newname = File::Spec->catfile($dirname,$basename);
print "$basename $dirname  $newname\n";

my $dir = dir(qw (Users fred lib));
my $subdir = $dir->subdir('perl5');
my $parent = $dir->parent;
my $windir = $dir->as_foreign('Win32');
print "$dir  $subdir $parent $windir\n";
