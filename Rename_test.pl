$name = $ARGV[0];
$new_name = ($name =~ m/(.*?)\..*/)[0];
print "$new_name\n";
system("cp $name $new_name");
