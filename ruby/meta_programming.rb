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
