# -*- encoding : utf-8 -*-
from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"
indata = open(from_file).read()

puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)
a)

a)
