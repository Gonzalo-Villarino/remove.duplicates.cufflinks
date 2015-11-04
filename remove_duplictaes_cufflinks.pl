use strict;
use warnings;

open(FILE,"cuff_yfp_unique.txt") or die;
while(<FILE>){
	chomp;
	next if(/tracking_id/);
	my @line = split(/ /,$_);
	my @gene = split(/,/,$line[2]);
	my $len = scalar(@gene);
	next if($len>1);
	print $_."\n";
}
close FILE;
	
	
