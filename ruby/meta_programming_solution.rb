# Assume you have following class:
class MyData
  def initialize(data_hash)
    @data_hash = data_hash
  end
end

# and you use it like this:
data = MyData.new(
  company: 'Abletech',
  stack: %w(Ruby Elixir),
  locations: %w(Wellington Berlin)
)

# How can I achieve this?:
data.company
# => 'Abletech'
data.stack.join(', ')
# => 'Ruby, Elixir'
data.locations.join(', ')
# => 'Wellington, Berlin'


# Simple solution:
class MyData
  def initialize(data_hash)
    @data_hash = data_hash
  end
  def company
    @data_hash[:company]
  end
  def stack
    @data_hash[:stack]
  end
  def locations
    @data_hash[:locations]
  end
end
# hard to maintain, and somehow not dry


# Better:
class MyData
  def initialize(data_hash)
    @data_hash = data_hash
  end

  %i(company stack locations).each do |name|
    define_method(name) do
      @data_hash[name]
    end
  end
end
# but now I have to know exactly which attributes to expect


# Better:
class MyData
  def initialize(data_hash)
    @data_hash = data_hash
  end

  def method_missing(name, *args, &block)
    if @data_hash.key?(name)
      @data_hash[name]
    else
      super
    end
  end
end

# But:
data.respond_to?(:company)
# => false

# Best:
class MyData
  def initialize(data_hash)
    @data_hash = data_hash
  end

  def method_missing(name, *args, &block)
  ...
  end

  def respond_to_missing?(name, include_private = false)
    @data_hash.key?(name.to_sym) || super
  end
end
