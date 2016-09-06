#This is a program to remove gene trees
#that do not contain phylogenetic information
#about the ingroup
#Question: jfwalker@umich.edu
@OUTGROUPS = ("Beta","Spol");
foreach $i (0..$#OUTGROUPS){
	
		$OUT_HASH{$OUTGROUPS[$i]} = $OUTGROUPS[$i];
}
$Desired = $ARGV[1];
open(FILE, $ARGV[0])||die "No File";
while ($line = <FILE>){

	chomp $line;
	@matches = $line =~ /[\,,\(](\w+@:)/gi;

}
for $i (0..$#matches){
	
		print "$matches[$i]\n";
		if(exists $OUT_HASH{$matches[$i]}){
			
		}else{
				$IN_HASH{$matches[$i]} = $matches[$i];
		}
}
$hash_size = keys %IN_HASH;
$file_name = $ARGV[0];
print "$hash_size\n";
system("mkdir Too_Few");
if($hash_size < $Desired){
	
		print "Less Than";
		system("mv $file_name Too_Few/");
}
