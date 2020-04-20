# Assume to have this class:
class MyClass
  attr_accessor :sum

  def calculate(a, b)
    sum = a + b
  end
end

# and using it like this, what's the output here?:
my = MyClass.new
my.calculate(1,2)
puts my.sum
# output: nil

# How to fix this?
class MyClass
  attr_accessor :sum

  def calculate(a, b)
    @sum = a + b
  end
end
