# Challenge: Stack Interface

#Write a program which implements a stack interface for integers.
#The interface should have ‘push’ and ‘pop’ functions. Your task is
#to ‘push’ a series of integers and then ‘pop’ and print every alternate
#integer.
class Stack

  def initialize
   @memory = []
   @stack_pointer = -1
  end

  #Push onto Stack
  def push(var)
    @stack_pointer += 1
    @memory[@stack_pointer] = var
  end

  #Pop Off Stack
  def pop()
    val = @memory[@stack_pointer]
    @memory.delete_at(@stack_pointer)
    @stack_pointer -= 1
    return val
  end

  def length
    return @stack_pointer + 1
  end
end

def newLine(stack)
  stack.pop()
  stack.length != 0 ? printf(" ") : printf("\n")
end

File.open(ARGV[0]).each_line do |line|
  stack = Stack.new
  line.split(" ").each{ |x| stack.push(x)}

  for item in 1..stack.length
    item % 2 != 0 ? printf(stack.pop): newLine(stack)
  end
end
