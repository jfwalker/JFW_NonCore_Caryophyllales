use Data::Dumper;
$name = $ARGV[0];
print "$name\n";
system("mkdir PamlFiles");




		open(paml, "the.ctl")||die "Need the control File";
		$hold = ($name =~ m/Codon\/(.*)/)[0];
		print "HERE: $hold\n";
		open(pout, ">PamlFiles/$hold\.ctl")|| "no pout";
		while($line = <paml>){

				chomp $line;
				if ($line =~ /seqfile = \/home\/joe\/Desktop/){
						print pout "      seqfile = /home/joe/Desktop/CarnivoryReanalyze/Ks_DrosPosition/$name\n";
				}else{
					
						print pout "$line\n";
				}
			
		}


print "Doing the Paml Analysis\n";
system("mkdir Paml_out");
system("mv PamlFiles/$hold\.ctl yn00.ctl");
system("./yn00/yn00");
system("mv yn Paml_out/$hold\.paml_out");
open(KS_out, ">>Ks")||die "No KS!? :(\n";
open(KA_KS_out, ">>KaKs")||die "No KaKs!? :(\n";

		$switch = "off";
		open(Paml_out, "Paml_out/$hold\.paml_out")||die "This Should'nt be\n";
		while($line = <Paml_out>){
				chomp $line;
				if($line =~ /Nei-Gojobori/){
						$switch = "on";
				}
				if($switch eq "on"){
					$line =~ /.*? (\d.+) \((\d.+) (\d.+)\).*/;
						
						if ($1 != ""){
							print KA_KS_out "$1,$2,$3\n";
							print KS_out "$3\n";
							$switch = "off";
						}
					}
		}

system("rm 2YN* rst rst1 rub");
