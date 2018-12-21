# hash values (key / pair)
states = {
    "Oregon" => "OR",
    "Pennsylvania" => "PA",
    "New York" => "NY"
}

puts states["New York"] # => NY
puts states["Oregon"]

# if - else statement.
ismale = true
istall = true

if ismale and istall
    puts "Your a tall male"
else
    puts "Your a short female.."
end

# switch statement

def get_day_name (day)
    day_name = ""

    case day 
    when "mon" # "when value of day = "mon"..
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednseday"
    when "thu"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    else
        day_name = "Invalid Abbreviation"
    end
        return day_name
end


puts get_day_name("tue")

# while loop => as long as a certain condition is true => iterate.


counter = 1

while counter <= 5
    puts counter
    index += 1
end