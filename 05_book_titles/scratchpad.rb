# Block Arguments =>
# Generate number sequence if n numbers m * i + c => pass them to block

def sequence2(n, m, c)
    i = 0
    while(i < n)
        yield i * m + c # pass next element of the sequence to the block
        i += 1
    end
end

sequence2(5, 2, 2) {|x| puts x} # block passed to method that prints numbers (2+0) (2+2) (4+2) (6+2) (8+2)

# Block argument using ampersand as prefix to final argument to gain a reference to outside block.

def sequence3(n, m, c, &b) # adding ampersand to final statement to gain explicit control of block
    i = 0
    while(i < n)
        b.call(i * m + c) # invoking block through the parameter b as a reference
        i += 1
    end
end

sequence3(5, 2, 2) {|x| puts x} 


# Creating a Proc through custom method

def makeproc(&p) # convert associated block to a Proc and store in <p>
    return p # return Proc object to retrieving object.
end

adder = makeproc{|x, y| x + y} # Invoking/Retrieving object. Now a reference to our Proc Object.

sum = adder.call(2,2)
puts sum

# Creating a Proc Object through Proc.new()

p = Proc.new {|x, y| x + y} #

summer = p.call(2, 99)
puts summer