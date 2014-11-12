# Challenge: Prime Numbers

#Print out the prime numbers less than a given number N.
#For bonus points your solution should run in N*(log(N))
#time or better. You may assume that N is always a positive integer.

def findDivisors(array,number)
  array.each{|i| return false if number % i == 0}
  return true
end

def generatePrimes(input_num)
  primes = []

  #Start above 2 No primes below it
  return "none" if input_num < 2
  primes.push(2)

  #Start at 3 and skip even numbers (never prime > 2)
  counter = 3

  while counter < input_num do
    primes.push(counter) if findDivisors(primes,counter)
    counter +=2
  end
  return primes
end


File.open(ARGV[0]).each_line do |line|
  puts generatePrimes(line.to_i).join(",")
end
