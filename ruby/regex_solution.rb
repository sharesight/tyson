# Please provide a regular expression to make the match work:
s = "A string with a link https://<any-domain-name>.com and some text"
s =~ regex1
puts $1
# => 'sharesight.com'
regex1 = /\/\/([a-z.]+)\s/


# Please enhance the regular expression to match against capital-letter domains too:
s = "A string with a link https://<Any-Domain-Name>.com and some text"
s =~ regex2
puts $1
# => 'Sharesight.com'
regex2 = /\/\/([a-zA-Z.]+)\s/


# Please enhance the regular expression to make accept numbers too:
s = "A string with a link https://<any-domain-name><any-number>.com and some text"
s =~ regex3
puts $1
# => 'Sharesight13.com'
regex3 = /\/\/([a-zA-Z0-9.]+)\s/
