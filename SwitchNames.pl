use Data::Dumper;
open(TAXA, $ARGV[0])||die "No TAXA";
while($line = <TAXA>){

		chomp $line;
		@array = split " ", $line;
		$HASH{$array[0]} = $array[1];
}
#print Dumper(\%HASH);
open(NEWICK, $ARGV[1])||die "No Newick";
while($line = <NEWICK>){
	
		chomp $line;
		for $keys (keys %HASH){
				$line =~ s/$keys/$HASH{$keys}/;
		}
		print "$line\n";
}
