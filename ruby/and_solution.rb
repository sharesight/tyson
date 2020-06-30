#  You have 2 strings:
string = 'test'
flag = false

# What is printed by puts, and why?:

puts string && flag
# output: false
# because `string && flag` is executed first, its result is: false

puts string and flag
# output: 'test'
# because `puts string` is executed first

puts (string and flag)
# output: false
# because `string and flag` is executed first, its result is: false
