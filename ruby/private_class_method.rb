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
# => ?
MyClass.hop
# => ?
