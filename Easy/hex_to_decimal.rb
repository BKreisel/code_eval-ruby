# Challenge: Hex to Decimal

# You will be given a hexadecimal (base 16) number. Convert it into decimal (base 10).

def to_hex(hex_digits)
  hex_chart = {'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15}
  decimal_val = hex_chart[hex_digits]
  return (decimal_val != nil ? decimal_val : hex_digits).to_i
end

File.open(ARGV[0]).each_line do |line|
  pos,sum =  line.length - 1,0

  line.chomp.split("").each do |char|
    pos -= 1
    sum += (16 ** pos) * to_hex(char)
  end
  puts sum
end
