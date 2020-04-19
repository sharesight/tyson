# What's going to happend when this code is executed?
begin
  raise "wrong"
rescue
  puts $!.message
end
# => ?


# And here?
def wrong; require 'unknown_file'; end
begin
  wrong
rescue
  puts "caught: #{$!.class}: #{$!.message}"
end
# => ?


# Why it the following bad?
def parse(*args)
  Integer(*params[:args]) rescue nil
end
# What happens when:
puts parse('1')
puts parse('a')
puts parse('1','2','3')
