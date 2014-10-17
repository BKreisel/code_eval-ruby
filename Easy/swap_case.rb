# Challenge: Swap Case

# Description: Write a program which swaps letters'
# case in a sentence. All non-letter characters should remain the same.


File.open(ARGV[0]).each_line do |line|
  line.split("").each do |char|
    char == char.upcase ? print(char.downcase) : print(char.upcase)
  end
  print "\n"
end
