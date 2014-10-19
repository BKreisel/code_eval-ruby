# Challenge: Calculate Distance

# You have coordinates of 2 points and need to find the distance between them.


File.open(ARGV[0]).each_line do |line|
  #Grab the coordinates
  x1,y1,x2,y2 = line.gsub(/[^0-9-]/, ' ').split(" ").map {|x| x.to_i}

  #Distance Formula
  puts Math.sqrt((x2-x1)**2 + (y2-y1)**2).to_i

end
