# Challenge: Armstrong Numbers

# An Armstrong number is an n-digit number that is equal to the sum
# of the n'th powers of its digits. Determine if the input numbers
# are Armstrong numbers.

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  sum = 0

  line.split("").each do |char|
    sum += char.to_i ** line.length
  end

  sum == line.to_i ? puts("True") : puts("False")
end
