# Challenge: Sum of Integers

# Description: Print out the sum of integers read from a file.

output = 0
File.open(ARGV[0]).each_line do |line|
  output += line.to_i
end
puts output
