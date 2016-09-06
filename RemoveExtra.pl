open(FILE, $ARGV[0])||die "No File";
while($line = <FILE>){

	chomp $line;
	$line =~ s/@.*?:/:/g;
	print "$line\n";
}
