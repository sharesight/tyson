# Please provide a regular expression to make the match work:
s = "A string with a link https://sharesight.com and some text"
s =~ regex1
puts $1
# => 'sharesight.com'
regex1 = /\/\/([a-z.]+)\s/


# Please provide a regular expression to make the match work:
s = "A string with a link https://Sharesight.com and some text"
s =~ regex2
puts $1
# => 'Sharesight.com'
regex2 = /\/\/([a-zA-Z.]+)\s/


# Please provide a regular expression to make the match work:
s = "A string with a link https://Sharesight13.com and some text"
s =~ regex3
puts $1
# => 'Sharesight13.com'
regex3 = /\/\/([a-zA-Z0-9.]+)\s/


# Please provide a regular expression to make the match work:
s = "A string with a link http://abletech.co.nz/blog and some text"
s =~ regex4
puts $1
# => 'abletech.co.nz'
regex4 = %r{//([a-z.]+)/}
