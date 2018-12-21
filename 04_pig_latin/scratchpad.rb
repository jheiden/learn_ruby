message = "hello"

STDOUT << message

puts message =~ /[ell]/

R

puts message.match(Regexp)
