#!/usr/bin/env perl -s
use strict;
use warnings;
use 5.010;
use Cwd;
$|=1;
use vars qw/$p/;

sub scanDir{
	my $workDir=shift;
	my $startDir=cwd;
	chdir $workDir or die "cd vers $workDir depuis $startDir impossible :$!\n";
	say "in : $workDir";
	opendir my $DIR,'.' or die "ouverture $workDir impossible $!\n";
	my @names = readdir $DIR or die "lecture $workDir ratée $!\n";
	close $DIR;
	
	for my $name (@names) {
		next if $name eq '.';
		next if $name eq '..';
		if ( -d $name ){
			scanDir($name);
			next;
		}
	say "fichier : $name" if defined $p ;
	}
	chdir $startDir or die "retour vers $startDir impossible $!\n";
	say "in : $startDir";
}

scanDir ('.');
# ajout de commentaire
# ajout 2 nd commentaire
#
