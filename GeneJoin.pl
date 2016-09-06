use Data::Dumper;

sub Qmat{
	@subarray = @_;
	#print "$subarray[0]\n";
	@ConvertedMatrix = ();
	#$Amount = ($Numb_of_Seq - 2);
	$Amount = ($#species_array - 1);
	#print "$#species_array\n";
	$sum = 0;
	$sum2 = 0;
	@col_array = ();
	@row_array = ();
	foreach $i (0..$#species_array){
		#print "$species_array[$i],";
	}
	#print "\n";
    for ($i = 0; $i <= $#species_array; $i++) {
        for ($j = 0; $j <= $#species_array; $j++) {
     
     		#print "$count_array[$i][$j],";
     	}
     	#print "\n";
    }
	#Gets Sum of Rows and Columns
	foreach $x (0..($#species_array)){
		foreach $y (0..($#species_array)){
			if($x != $y){
				$col_sum += $count_array[$x][$y];
				$row_sum += $count_array[$y][$x];
			}
			$ConvertedMatrix[$x][$y] = 0;
		}
		push @row_array, $row_sum;
		push @col_array, $col_sum;
		$col_sum = 0;
		$row_sum = 0;
	}
	#print Dumper(\@row_array);
	#print Dumper(\@col_array);	
	#Calculates the Negative Whatever you ma call it
	foreach $i (0..($#species_array)){
		foreach $j (0..($#species_array)){
            if ($i != $j) {
                #@LengthMatrix[i][j] = abs($row_array[i] - $col_array[j]);
                $ConvertedMatrix[$i][$j] -= ($row_array[$i]  + $col_array[$j]);
            }
        }
    }
    #$q = (($Amount * $count_array[0][1]) - abs($ConvertedMatrix[0][1]));
    #print "01: $q\n";

    #Calc the Q seems to be working
	foreach $i (0..($#species_array)){
		foreach $j (0..($#species_array)){
            if ($i != $j) {
                #@LengthMatrix[i][j] = abs($row_array[i] - $col_array[j]);
                $QMatrix[$i][$j] = (($Amount * $count_array[$i][$j]) - abs($ConvertedMatrix[$i][$j]));
            }else{
          	    $QMatrix[$i][$j] = 0;
            }
        }
    }
    #Test
    for ($i = 0; $i <= $#species_array; $i++) {
        for ($j = 0; $j <= $#species_array; $j++) {
     
     		print "$QMatrix[$i][$j],";
     	}
     	print "\n";
    }

	$Numb_of_Seq = $Numb_of_Seq - 1;
	#print "$Numb_of_Seq\n";
	#return $Numb_of_Seq;

}
#Finds Smallest Value in the Qmatrix
sub ChooseMini(){

	#Code up Grabbing smallest Val
	$mini = 9999999999.99;
	$mini1 = 0;
    $mini2 = 0;
	#add 1 because it is subtracted above
	for ($i = 0; $i < ($Numb_of_Seq + 1); $i++) {
        for ($j = 0; $j < ($Numb_of_Seq + 1); $j++) {
        	if ($i != $j){
        	
        			if($QMatrix[$i][$j] <= $mini){
        			
        				$mini = $QMatrix[$i][$j];
        				$mini1 = $i;
        				$mini2 = $j;
        			}
        	}
        
        }
    }
    #join closest species
    $new_species = "";
    $new_species = "\($species_array[$mini1],$species_array[$mini2]\)";
    print "Joined: $new_species\n"; #$count_array[$mini1][$mini2]\n" #\t$QMatrix[$mini1][$mini2]\n";
    #print "$new_species";
    #print Dumper(\@species_array);
    @new_species_array = ();
    #splice(@species_array, $mini1, $mini1);
    #splice(@species_array, $mini2, $mini2);
    #push(@new_species_array, $new_species);
    foreach $i (0..$#species_array){
    
    	
    		#push(@new_species_array, $new_species);
    		#push(@new_species_array, $species_array[$i]);
    	if($i == $mini1){
    	
    	
    	}elsif($i == $mini2){
    	}else{
    		push(@new_species_array, $species_array[$i]);
    	}
    
    }
    @species_array = ();
    #push(@new_species_array, $new_species);
    push(@species_array, $new_species);
    foreach $i (0..$#new_species_array){
    
    	push(@species_array, $new_species_array[$i]);
    }
   # push(@species_array, $new_species);
    #@species_array = reverse @species_array;
   # foreach $i (0..$#new_species_array){
    
    	#@species_array[$i] = $new_species_array[$i];
   # } 
    #push(@species_array, $new_species);
   # print "$species_array[$mini1]\t$species_array[$mini2]\t$QMatrix[$mini1][$mini2]\n";
   # print Dumper(\@species_array);
   #species_array now contains the new combined species as position 0 and the rest in their order
	#recreated the array without the previous ones
	#1/2 [distance first species +  distance from second - distance of joined pair]
	$small_length = $count_array[$mini1][$mini2];
	$run_count = 0;
	$temp_matrix = ();
	for ($i = 0; $i <= ($Numb_of_Seq); $i++) {
		for ($j = 0; $j <= ($Numb_of_Seq); $j++) {
			$temp_matrix[$i][$j] = 0;
		}	
	}
	for ($i = 0; $i <= ($Numb_of_Seq); $i++) {
        	if ($i != $mini1 && $i != $mini2){
        		$ColRow = ((($count_array[$mini1][$i] + $count_array[$mini2][$i]) - $small_length) * 0.5);
        		#print "Here: $count_array[$mini1][$run_count] + $count_array[$mini2][$run_count] + $small_length";
				$run_count++;
				$temp_matrix[0][$run_count] = $ColRow;
				$temp_matrix[$run_count][0] = $ColRow;
        	}
    }
    #print Dumper(\@temp_matrix);
    for ($i = 0; $i <= ($Numb_of_Seq); $i++) {
        for ($j = 0; $j <= ($Numb_of_Seq); $j++) {
        	#print "HERE: $temp_matrix[$i][$j],";
        }
        #print "\n"
    }
    $icount = 1;
    $jcount = 0;
    for ( $i = 0; $i <= ($Numb_of_Seq); $i++) {
        $jcount = 1;
        if (($i != $mini1) && ($i != $mini2)) {
            for ($j = 0; $j <= ($Numb_of_Seq); $j++) {
                if (($j != $mini1) && ($j != $mini2)) {
                    $temp_matrix[$icount][$jcount] = $count_array[$i][$j];
                    $jcount++;
                }
            }
            $icount++;
        }
    }
    $count_array = ();
    for ($i = 0; $i <= ($Numb_of_Seq); $i++) {
        for ($j = 0; $j <= ($Numb_of_Seq); $j++) {
        	#print "$temp_matrix[$i][$j],";
        	$count_array[$i][$j] = $temp_matrix[$i][$j];
        }
       # print "\n"
    }
    #print Dumper(\@temp_matrix);
    @row_array = ();
	@col_array = ();
}


print "Reading File\n";
@c_array = ();
open(Fasta_out, ">Fasta_out.fa");
open(Dist_out, ">Dist_out.csv");
open(Newick_out, ">GeneJoin_OnlyPresence_tree.tre");
open(INPUT, $ARGV[0])|| die "GeneJoin.pl PhypartsOutput";
while($line = <INPUT>){

	chomp $line;
	($name, $dups) = split " ", $line, 2;
	@array = split ",", $dups;
	foreach $i (0..$#array){
		$HASH{$array[$i]} = @c_array;
	}
	$all_count++;
}
#print Dumper(\%HASH);
$hash_count = keys %HASH;
$Numb_of_Seq = $hash_count;
$count = 0;
for $keys (keys %HASH){
	$species_array[$count] = $keys;
	foreach $i (0..$hash_count){
		$New_HASH{$keys}[$i] = 0;
		$count_array[$count][$i] = 0;
	}
	$count++;
}
#print Dumper(\%New_HASH);
print "Making Original Dist Matrix\n";
#make the Dist Matrix
$num_args = $#ARGV + 1;
if ($num_args != 2) {
	print "You did not input a Fasta making the Matrix from Phyparts output\n";
	open(INPUT, $ARGV[0])|| die "GeneJoin.pl PhypartsOutput";
	while($line = <INPUT>){

		chomp $line;
		($name, $dups) = split " ", $line, 2;
		@array = split ",", $dups;
		foreach $i (0..$#species_array){
			foreach $k (0..$#array){
				if ($species_array[$i] eq $array[$k]){
					foreach $j(0..$#species_array){
						foreach $x (0..$#array){
							if ($species_array[$j] eq $array[$x]){
								$count_array[$i][$j] += 1;
							}
						}
					}
		 		}
			}
		}
	}
	foreach $i (0..$#species_array){

		foreach $j (0..$#species_array){

			$count_array[$i][$j] = (1/$count_array[$i][$j]);
		}

	}
}else{
	@species_array = ();
	@seq_array = ();
	$count = 0;
	$hits = 0;
	$Numb_of_Seq = 0;
	print "You Input a Fasta\n";
	open(FASTA, $ARGV[1])||die "Where is the fasta?";
	while($line = <FASTA>){
	
		chomp $line;
		if ($line =~ /^>/){
			if($count != 0){
				push (@species_array,$name);
				push (@seq_array, $seq);
			}
			$name = ($line =~ m/>(.*)/)[0];
			#print "$name\n";
			$seq = "";
			$Numb_of_Seq++;
		}else{
		
			$seq .= $line;
		
		}
	
		$count++;
	}
	push (@species_array,$name);
	push (@seq_array, $seq);
	foreach $x (0..$#species_array){
		@seq1 = split "", $seq_array[$x];
		foreach $y (0..$#species_array){
			@seq2 = split "", $seq_array[$y];
			foreach $z (0..$#seq1){
				if($seq1[$z] eq $seq2[$z]){
					$hits += 1;
				}

			}
			$count_array[$x][$y] = (($#seq1+1) - $hits);
			$hits = 0;		
		}
	}

	#print Dumper(\@count_array);
}
print Dist_out "names\t";
#Use Fasta to Presence Abscence distance matrix
open(INPUT, $ARGV[0])|| die "GeneJoin.pl PhypartsOutput";
foreach $i (0..$#species_array){
	print Dist_out "$species_array[$i]\t";
	
}
print Dist_out "\n";

foreach $i (0..$#species_array){
	print Dist_out "$species_array[$i]\t";
	foreach $j(0..$#species_array){
	
		print Dist_out $count_array[$i][$j];
		print Dist_out "\t";
	}
	print Dist_out "\n";
}
#print Dumper(\@count_array);
#Make a Fasta
print "Making Fasta\n";
$all_count = 0;
$switch = "off";
$cat = "";
for $key (keys %HASH){
	#print Fasta_out ">$key\n";
	$cat .= ">$key\n";
	open(INPUT, $ARGV[0])|| die "GeneJoin.pl PhypartsOutput";
	while($line = <INPUT>){
		chomp $line;
		($name, $dups) = split " ", $line, 2;
		@array = split ",", $dups;
		foreach $i (0..$#array){
			if ($key eq $array[$i]){
				$switch = "on";
			}
		}
		if ($switch eq "on"){		
			#print Fasta_out "1";
			$cat .= "1";
			$switch = "off";
		}else{
			#print Fasta_out "0";
			$cat .= "0";
			$switch = "off";
		}
		$all_count++;
	}
	#print Fasta_out "\n";
	$cat .= "\n";
	#print "$all_count\n";
	$all_count = 0;
}
print Fasta_out "$cat";
system("cp Fasta_out.fa RerunWithThis.fa");
$Numb_of_Seq = $Numb_of_Seq;
print "Building Tree\n";
while ($Numb_of_Seq >= 2){

	#make the Q matrix
	($Numb_of_Seq) = Qmat($Numb_of_Seq, @count_array);
	#Grab the Smallest returns location of smallest
	($mini1, $mini2) = ChooseMini();
	#Recalculate the matrix
	
	#New Count Matrix
	
	#check if its working
	for ($i = 0; $i < ($Numb_of_Seq + 1); $i++) {
        for ($j = 0; $j < ($Numb_of_Seq + 1); $j++) {
     
    		#print "$QMatrix[$i][$j],";
     	}
     	#print "\n";
    }


}
print Newick_out "$species_array[0];\n";
open(Newick_Other, ">GeneJoin_PresenceAbsence_tree.tre");
if ($num_args != 2) {
	@species_array = ();
	@seq_array = ();
	$count = 0;
	$hits = 0;
	$Numb_of_Seq = 0;
	print "Running the analysis for presence absence\n";
	open(FASTA, "RerunWithThis.fa")||die "Where is the fasta?";
	while($line = <FASTA>){
	
		chomp $line;
		if ($line =~ /^>/){
			if($count != 0){
				push (@species_array,$name);
				push (@seq_array, $seq);
			}
			$name = ($line =~ m/>(.*)/)[0];
			#print "$name\n";
			$seq = "";
			$Numb_of_Seq++;
		}else{
		
			$seq .= $line;
		
		}
	
		$count++;
	}
	push (@species_array,$name);
	push (@seq_array, $seq);
	foreach $x (0..$#species_array){
		@seq1 = split "", $seq_array[$x];
		foreach $y (0..$#species_array){
			@seq2 = split "", $seq_array[$y];
			foreach $z (0..$#seq1){
				if($seq1[$z] eq $seq2[$z]){
					$hits += 1;
				}

			}
			$count_array[$x][$y] = (($#seq1+1) - $hits);
			$hits = 0;		
		}
	}

	#print Dumper(\@count_array);
	while ($Numb_of_Seq >= 2){

	#make the Q matrix
	($Numb_of_Seq) = Qmat($Numb_of_Seq, @count_array);
	#Grab the Smallest returns location of smallest
	($mini1, $mini2) = ChooseMini();
	#Recalculate the matrix
	
	#New Count Matrix
	
	#check if its working
	for ($i = 0; $i < ($Numb_of_Seq + 1); $i++) {
        for ($j = 0; $j < ($Numb_of_Seq + 1); $j++) {
     
    		#print "$QMatrix[$i][$j],";
     	}
     	#print "\n";
    }


	}
	print Newick_Other "$species_array[0];\n";
}
system("rm RerunWithThis.fa");
