# What happens when I execute this code?:
case 'string'
when 'string'
  puts 'string'
else
  puts 'no string'
end
# => ?


# And here, and why?:
case 'string'
when String
  puts 'string'
else
  puts 'no string'
end
# => ?


# So, is this true then?:
'string' == String
# => ?
