#write your code here

def echo (val)
    return val;
end

def shout (val)
    return val.upcase
end

def repeat (val, num = 2) # default value of 1 if no argument passed to num parameter.
    anArr = []
    num.times do # Iterate block <int> times.
        anArr << val # << is a shorthand for push "push val to end of anArr.."
    end
        return anArr.join(" ")
end

def start_of_word (aStr, num)
    return aStr[0..(num - 1)]
end

def first_word (aStr)
    collector = ""
    i = 0
    while i < aStr.length do
        if aStr[i] == " "
            break
        else
            collector += aStr[i]
            i += 1
        end
    end       
    return collector
end





def titleize (a_str)
    an_arr = a_str.split(" ")
    except = ["and", "over", "the"]
    an_arr.each do |wrd|
        wrd.capitalize unless except.include?(wrd)
    end
    an_arr[0].capitalize
    an_arr.join(" ")

end
        

x = titleize("War over Peace")
puts x

# def titleize (aString)
#     new_arr = aString.split
#     if new_arr.include?("and") or new_arr.include?("over")
#         puts "includes"
#     else
#         puts "not includes"
#     end
  
# end

titleize("War over Peace")

