use Data::Dumper;
open(clades, $ARGV[0])||die "perl GeneHybridSplitter ListofClades.csv Ouputofpxbp";
while($line = <clades>){

	chomp $line;
	push @array, $line;

}
#print Dumper(\@array);
$numb_of_clades = ($#array + 1);
#print "$numb_of_clades\n";
$count = 0;
open(bipartitions, $ARGV[1])|| die "perl GeneHybridSplitter ListofClades.csv Ouputofpxbp";
while($line = <bipartitions>){

	chomp $line;
	#signifies new bipartition
	if ($line =~ /^cluster/){
		if($count == $numb_of_clades){
		
			print "$clade\n";
		}
		$count = 0;
		$clade = $line;
	}
	$line =~ m/(.*?)\t1$/;
	@bip_array = split " ", $1;
	foreach $x (0..$#array){
			$all = 0;
			@want = split ",", $array[$x];
			if($#want == ($#bip_array)){
				
					foreach $y (0..$#want){
							foreach $z (0..$#bip_array){
								if($want[$y] eq $bip_array[$z]){
									$all++;
								}
							}
					}
			}
			if($all == ($#want + 1)){
					#print "$clade\n";
					#print Dumper(\@want);
					#print Dumper(\@bip_array);
					$count++;
			}
		
	}
	
}
if($count == $numb_of_clades){
		
	print "$clade\n";
}
