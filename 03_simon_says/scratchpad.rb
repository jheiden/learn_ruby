



# first, second, third = "one", "two", "three"

# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"




# orders = []
# 5.times do 
#     orders << Order.new("customer@example.com", 10)
# end

# 3.times do |number| # Times method passes a number implicitly each time it calls the block (block parameter)
#     puts "#{number} Echo!" # we use that and print the iteration nr..
# end

# 3.times {|n| puts "#{n} Echo!"}

# https://launchschool.com/books/ruby/read/intro_exercises

x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#1) Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
# x.each{|num| puts num.to_s + " value"}
#2) Same as above, but only print out values greater than 5.
# x.each{|num| puts num.to_s + " is less than 5" if num < 5}
# 3) Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
# new_arr = []
# new_arr << x.select{|num| num % 2 != 0} # <.select> (array method applied to x => push/append odd values to new_arr)
# puts new_arr
#4) Append "11" to the end of the original array. Prepend "0" to the beginning.
# x << 11
# x.unshift("0")
#5) Get rid of "11". And append a "3".
#x.pop()
# x.slice!(x.length - 1)
# x << 3
# puts x
#6) Get rid of duplicates without specifically removing any one value.
# puts x.uniq 
# returns a copy with no duplicates (does not modify original)
# x.uniq! 
# deletes duplicates from original
# puts x
#8) Create a Hash using both Ruby syntax styles.
# myHash = {name : "Bob"}
# my_old_hash = {name => "bob"}

h = {a:1, b:2, c:3, d:4}

# puts h[:b]

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr_shorthand = %w{snow winter ice slippery salted-roads white-trees}

x = arr.delete_if {|wrd| wrd.start_with?("s")}
# puts x

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

#y = a.map {|wrd| wrd + "!"}
#puts y

$my_new_arr = Array.new

y = a.map do |wrd|
    $my_new_arr << wrd.split(" ")
end

colors = ["Red", "Green", "", "Blue", "White"]

puts "Includes" if colors.include?("Red")


# colors.each {|clr| colors.pop() if clr == ""}
# puts colors

colors.length.times do |clr|
    puts clr
end