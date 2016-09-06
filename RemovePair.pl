while($line = <>){
	
		chomp $line;
		if ($line =~ />/){
				if($count != 0){
				
						if($name =~ />MJM2940/ or $name =~ />NepSFB/){
							
								print "$name\n$seq\n";
						}
				}
				$seq = "";
				$name = $line;
			
		}else{
			
				$seq .= $line
		}
		$count++;
}
if($name =~ />MJM2940/ or $name =~ />NepSFB/){
							
	print "$name\n$seq\n";
}
