# Please provide a regular expression to make the match work:
s = "A string with a link https://sharesight.com and some text"
s =~ regex1
puts $1
# => 'sharesight.com'


# Please provide a regular expression to make the match work:
s = "A string with a link https://Sharesight.com and some text"
s =~ regex2
puts $1
# => 'Sharesight.com'


# Please provide a regular expression to make the match work:
s = "A string with a link https://Sharesight13.com and some text"
s =~ regex3
puts $1
# => 'Sharesight13.com'


# Please provide a regular expression to make the match work:
s = "A string with a link http://abletech.co.nz/blog and some text"
s =~ regex4
puts $1
# => 'abletech.co.nz'
