# Assume you have the following class, with two class methods:
class MyClass
  def self.run
    print "run and #{hop}\n"
  end

  private

  def self.hop
    "hop"
  end
end

# What happens when:
MyClass.run
# output: run and hop
MyClass.hop
# returns: 'hop'
# because private is used here for instance methods

# How to make the method hop then private?
class MyClass
  class << self
    def run
      print "run and #{hop}\n"
    end

    private

    def hop
      "hop"
    end
  end # eigenclass
end

MyClass.run
# output: run and hop
MyClass.hop
# exception: NoMethodError: private method `hop' called for MyClass:Class
