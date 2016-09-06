$name = $ARGV[0];
$rename = ($name =~ /.*?\.(.*)/)[0];
print "$rename\n";
system("cp $name $rename");
