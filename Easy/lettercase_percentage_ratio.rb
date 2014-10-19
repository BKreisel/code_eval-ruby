# Challenge:Lettercase Percentage Ratio

# Description: Your program should accept as its first argument a path to
# a filename. Each line of input contains a string with uppercase and
# lowercase letters

# For each line from input, print the percentage ratio of uppercase
# and lowercase letters rounded to the second digit after the dot. E.g.:

class Numeric
    def percentage(n)
        self.to_f / n * 100
    end
end


File.open(ARGV[0]).each_line do |line|
    up,down = 0,0
  line.split("").each do |char|
      char == char.upcase ? up+=1 : down+=1
  end
  l_case = "%.2f" % down.percentage(line.length)
  u_case = "%.2f" % up.percentage(line.length)
  puts "lowercase: #{l_case} uppercase: #{u_case}"
end
