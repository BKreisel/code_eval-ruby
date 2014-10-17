# Challenge: Swap Case

# Description: Write a program which swaps letters'
# case in a sentence. All non-letter characters should remain the same.


File.open(ARGV[0]).each_line do |line|
  output = ""
  line.split("").each do |char|
    if char == char.upcase
      output << char.downcase
    else
      output << char.upcase
    end
  end
  puts output
end
