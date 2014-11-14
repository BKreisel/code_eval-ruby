# Challenge: ASCII Decryption

# You are an analyst for the Central Intelligence Agency and you've intercepted
# an top secret encrypted message which contains numbers. Each number is
# obtained by taking an ASCII code of the original character and adding
# some unknown constant 'n'.

# For example, you could encrypt the word 'test' with the condition that 'n'= 11

# 'test' to ASCII -> 116 101 115 116 -> add 'n' to each number-> 127 112 126 127

# Based on previous intelligence reports, you know that the original message
# includes two identical words consisting of 'x' characters and the last letter
# in the word is known.

# Your challenge is to decrypt the message.

require 'set'

File.open(ARGV[0]).each_line do |line|

  #Extract Input
  repeat_length = line.split(" | ")[0].to_i
  repeat_letter = line.split(" | ")[1]
  message = line.split(" | ")[2].split(" ")
  all_combinations = []

  #Generate All possible word combinations of input length
  for i in 0..(message.length - repeat_length)
    all_combinations.push(message[i,repeat_length].join(" "))
  end

  #Find word combinations that occur more than once
  matches = all_combinations.select { |e| all_combinations.count(e) > 1 }.uniq
  matches.map!{|x| x.split(" ")}

  #Determine the frequency of codes in words
  h = {}
  message.uniq.each do |code|
    matches.each_with_index do |i,index|
      if i.include?(code)
        h[code].class != NilClass ?  h[code].add(index) : h[code] = Set.new;h[code].add(index)
      end
    end
  end

  #Determine the Space character
  space_char = 0
  h.each{|x| space_char = x[0] if x[1].length == matches.length-1}

  repeated_word = []
  matches.each{|x| (repeated_word = x;break) if !x.include?(space_char)}

  #Determine the ASCII Offset
  key = repeat_letter.ord - repeated_word.pop.to_i

  #??????

  #Profit
  message.each{|x| printf((x.to_i+key).chr)}
end
