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
