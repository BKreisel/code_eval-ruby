# Challenge:N MOD M

# Description: Given two integers N and M,
# calculate N Mod M (without using any inbuilt modulus operator).


File.open(ARGV[0]).each_line do |line|
  n = line.split(",")[0].to_i; m = line.split(",")[1].to_i
  base = (n / m).floor
  puts n - (m * base)
end
