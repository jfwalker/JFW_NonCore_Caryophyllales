open(Taxa, $ARGV[0])||die "No taxa\n";
while ($line = <Taxa>){

		chomp $line;
		($ID,$NAME) = split " ", $line, 2;
		$HASH{$ID} = $NAME;
}
open(Newick, $ARGV[1])||die "No Newick\n";
while($line = <Newick>){

		chomp $line;
		for $keys (keys %HASH){
			
				$line =~ s/$keys/$HASH{$keys}/gi;
		}
		print "$line\n";
}
