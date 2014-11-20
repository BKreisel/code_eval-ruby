# Challenge: Decimal to Binary

#You are given a decimal (base 10) number, print its binary representation.
#Disclaimer (I know you can do this with .to_s(2) but I wanted the challenge)
class Fixnum
  def to_bin
    return "0" if self == 0
    binary,r1 = [],self
    while r1 != 0 do
      binary.push(r1 % 2)
       r1 /= 2
    end
    return binary.join("").reverse
  end
end


File.open(ARGV[0]).each_line do |line|
  puts line.to_i.to_bin
end
