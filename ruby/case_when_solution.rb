# What happens when I execute this code?:
case 'string'
when 'string'
  puts 'string'
else
  puts 'no string'
end
# output: string


# And here, and why?:
case 'string'
when String
  puts 'string'
else
  puts 'no string'
end
# output: string
# because 'string' is a String


# So, is this true then?:
'string' == String
# no, it's false, because the String object 'string' and the class String are not equal


# Why does the `when String` then work?
# because it's using the `===` operator

# So, then:
'string' === String
# no, still false, case...when uses
String === 'string'
# and `String.===` is defined as `kind_of?`
