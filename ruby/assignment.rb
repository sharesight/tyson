# What gets printed by puts, and why?

a = nil
a ||= 1
puts a
# output: ?

a = 2
a ||= 1
puts a
# output: ?

a = false
a ||= true
puts a
# output: ?
