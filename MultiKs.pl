use Data::Dumper;
#Program assumes that you have mafft and phyx installed
#program also assumes their is a folder called yn00 in the folder 
#you are running it and that folder contains the yn00 file
#in the folder you are running it their should be the yn00.ctl file
#renamed the.ctl (better if you don't ask) 
#also the input pep&cds should contain both species'  pep and cds files
#Sorry about the confusion, Good luck!
open(rawblast, $ARGV[0])||die "perl *.pl *.rawblast *.pep.fa *.cds.fa";
print "Reading in RawBlast\n";
while($line = <rawblast>){
	
		chomp $line;
		@array = split " ", $line;
		if (exists $HASH{$array[0]}){
			
		}else{
			
				$HASH{$array[0]} = $array[2];
		}
}
#print Dumper(\%HASH);
$count = 0;
open(Pep, $ARGV[1])||die "perl *.pl *.rawblast *.pep.fa *.cds.fa";
print "Reading in Peptide File\n";
while($line = <Pep>){
		
		chomp $line;
		if($line =~ /^>/){
			
			if($count == 1){
				
				$PEP_HASH{$name} = $seq;
			}
			$name = ($line =~ m/>(.*)/)[0];
			$seq = "";
		}else{
			
				$seq .= $line;
		}
		$count = 1;
}
$PEP_HASH{$name} = $seq;
$count = 0;
#print Dumper(\%PEP_HASH);
system("mkdir File_Folder");
for $keys (keys %HASH){

		open(out, ">File_Folder/$keys\_$HASH{$keys}\.pairs");
		$hold = "$HASH{$keys}";
		#print "$hold\n$PEP_HASH{$hold}\n";
		print out ">$keys\n$PEP_HASH{$keys}\n>$HASH{$keys}\n$PEP_HASH{$hold}\n";
}
#do the mafft part
system("for x in File_Folder/*.pairs;do mafft --auto --genafpair --maxiterate 1000 --amino \$x > \$x.aln;done");
$count = 0;
print "Alignment done Reading in CDS\n";
open(CDS, $ARGV[2])||die "perl *.pl *.rawblast *.pep.fa *.cds.fa";
print "Reading in Peptide File\n";
while($line = <CDS>){
		
		chomp $line;
		if($line =~ /^>/){
			
			if($count == 1){
				
				$CDS_HASH{$name} = $seq;
			}
			$name = ($line =~ m/>(.*)/)[0];
			$seq = "";
		}else{
			
				$seq .= $line;
		}
		$count = 1;
}
$CDS_HASH{$name} = $seq;
$paml_count = 0;
@array = ();
system("mkdir PamlFiles");
print "Printing Paml Controls and Stuff\n";
for $keys (keys %HASH){

		open(out, ">File_Folder/$keys\_$HASH{$keys}\.pairs\.aln\.cds");
		$hold = $HASH{$keys};
		$hold2 = "$keys\_$HASH{$keys}\.ctl";
		print "$hold2\n";
		#print "$hold\n$CDS_HASH{$hold}\n";
		print out ">$keys\n$CDS_HASH{$keys}\n>$HASH{$keys}\n$CDS_HASH{$hold}\n";
		open(paml, "the.ctl")||die "Need the control File";
		open(pout, ">PamlFiles/$keys\_$HASH{$keys}\.ctl")|| "no pout";
		while($line = <paml>){
				#open(pout, ">PamlFiles/$keys\_$HASH{$keys}\.ctl")|| "no pout";
				#system("cp yn00.ctl $keys\_$HASH{$keys}\.ctl");
				chomp $line;
				if ($line =~ /seqfile = \/home\/joe\/Desktop/){
						print pout "      seqfile = /home/joe/Desktop/CarnivoryReanalyze/MultiSpeciesKsPlot/File_Folder/$keys\_$HASH{$keys}\.pairs\.aln\.codon\n";
				}else{
					
						print pout "$line\n";
				}
			
		}
		$array[$paml_count] = $hold2;
		$paml_count++;
}
system("for x in PamlFiles/*;do dos2unix \$x;done");
system("rm File_Folder/*.pairs");
print "Doing Alignment By Codon\n";
system("for x in File_Folder/*.aln;do pxaatocdn -a \$x -n \$x\.cds -o \$x\.codon;done");
system("rm File_Folder/*.aln");
system("rm File_Folder/*.cds");
print "Doing the Paml Analysis\n";
system("mkdir Paml_out");
foreach $x (0..$#array){

		#print "$array[$x]\n";
		system("mv PamlFiles/$array[$x] yn00.ctl");
		system("./yn00/yn00");
		system("mv yn Paml_out/$array[$x]\.paml_out");
	
}
open(KS_out, ">Ks")||die "No KS!? :(\n";
open(KA_KS_out, ">KaKs")||die "No KaKs!? :(\n";
foreach $x (0..$#array){
		$switch = "off";
		open(Paml_out, "Paml_out/$array[$x]\.paml_out")||die "This Should'nt be\n";
		while($line = <Paml_out>){
				chomp $line;
				if($line =~ /Nei-Gojobori/){
						$switch = "on";
				}
				if($switch eq "on"){
					$line =~ /.*? (\d.+) \((\d.+) (\d.+)\).*/;
						
						if ($1 != ""){
							print KA_KS_out "$array[$x]\t$1,$2,$3\n";
							print KS_out "$3\n";
							$switch = "off";
						}
					}
		}
}
system("rm 2YN* rst rst1 rub");
