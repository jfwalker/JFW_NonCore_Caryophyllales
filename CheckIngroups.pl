#
#This is a program designed to remove anything not
#phylogenetically informative. Specify the file
#and the Outgroups and it will move the ones that
#are too small to a folder called Too Few. If the
#Folder already exists it will spit an error saying
#the folder exists already, but that should not affect
#anything
#questions: jfwalker@umich.edu
@OUTGROUPS = ("Beta","Spol"); # Change this for outgroups
$Desired_Number = $ARGV[1]; #This is the number of Ingroups you would like
foreach $i (0..$#OUTGROUPS){

	$OUT_HASH{$OUTGROUPS[$i]} = $OUTGROUPS[$i];
}
open(File, $ARGV[0])|| die "No File";
while ($line = <File>){

	chomp $line;
	if ($line =~ /^>/){

		$name = ($line =~ m/>(.*)/)[0];
		if(exists $OUT_HASH{$name}){

		}else{
			$IN_HASH{$name} = $name;
		}
	}

}
$hash_size = keys %IN_HASH;
$file_name = $ARGV[0];
print "$hash_size\n";
system("mkdir Too_Few");
if ($hash_size < $Desired_Number){

	print "Less Than\n";
	system("mv $file_name Too_Few/");

}
