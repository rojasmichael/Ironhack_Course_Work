puts "What is the source file?"
source_file = gets.chomp
source_file_contents = IO.read(source_file)
print "What do you want to call the destination file?"
dest_file = gets.chomp
IO.write(dest_file, source_file_contents)



