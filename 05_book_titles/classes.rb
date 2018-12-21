
#creates a class named Point
class Point

    # Getter / accessor
    attr_accessor :x, :y

     # accessor (getters) methods for instance variables
    # def x
    #     @x # => return x
    # end

    # def y
    #     @y # => return y
    # end

    # This method is invoked automatically every time a <.new> object of the class is created,
    def initialize(x,y) # defines an instance method for the class
        @x, @y = x, y # Take the two parameters passed, => assign them to instance variables @x @y
    end

    # returns a string representation of the object. Useful for debugging. Should always include.
    def to_s
        "(#@x, #@y)"
    end



end

p = Point.new(1,2) # Instantiate a new class object with p as reference.
puts p
q = Point.new(p.x * 2, p.y * 3)