# What gets printed by puts, and why?

a = nil
a ||= 1
puts a
# output: 1
# because a resolves to nil and gets overwritten with 1

a = 2
a ||= 1
puts a
# output: 2
# because a resolves to 2 and is not overwritten

a = false
a ||= true
puts a
# output: true
# because a resolves to false and gets overwritten with 1; nil and false are falsy, everything is true
