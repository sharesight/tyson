# What's going to happend when this code is executed?
begin
  raise "wrong"
rescue
  puts $!.message
end
# output: wrong
# because the RuntimeError is caught by rescue and its message it printed


# And here?
def wrong
  require 'unknown_file'
end
begin
  wrong
rescue
  puts "caught: #{$!.class}: #{$!.message}"
end
# not output, instead a LoadError is thrown: LoadError: cannot load such file -- unknown_file
# because LoadError is not a StandardError and should not be caught (normally) and `rescue` is
# actually `rescue StandardError`

# How to handle those errors then?
begin
  wrong
rescue Exception
  puts "caught: #{$!.class}: #{$!.message}"
end
# output: caught: LoadError: cannot load such file
# Or even better:
begin
  wrong
rescue LoadError
  puts "caught: #{$!.class}: #{$!.message}"
end
# better to be specific


# Why it the following bad?
def parse(*args)
  Integer(*params[:args]) rescue nil
end
# What happens when:
puts parse('1')
# not output
puts parse('a')
# not output
puts parse('1','2','3')
# not output
# because this error is hidden: NameError: undefined local variable or method `params' for main:Object
