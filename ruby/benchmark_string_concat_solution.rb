# Assume you have two strings you want to concatenate:
a = 'a'
b = 'b'

# and you want to find the faster way to do so (+= vs. <<):
require 'benchmark'
Benchmark.bm(10) do |bm|
  bm.report('+=') do
    100_000.times { a += 'a' }
  end
  bm.report('<<') do
    100_000.times { b << 'a' }
end end

# Which one is faster? Any idea why that is?
#       user      system    total     real
# +=    0.730000  0.570000  1.300000  (1.309227)
# <<    0.020000  0.000000  0.020000  (0.019441)

# << is a lot faster
# because it doesn't need to allocate so much memory

# But:
a = 'a'; a2 = a
b = 'a'; b2 = b

a += 'bcd'
b << 'bcd'
puts a
# => 'abcd'
puts b
# => 'abcd'

puts a2
# => ?
puts b2
# => ?
