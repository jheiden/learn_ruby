class Song

    @@plays = 0 # Class variable to keep track of how many songs in total has been played.
    # Accessor
    attr_reader :name, :artist, :duration

    # Setter
    attr_writer :duration # can now invoke this method to access instance variable duration from outside.

    # Sets an object state upon invoking .new on the Song class.
    def initialize (name, artist, duration)
        # Storing variables as instance variables in order to reuse. These variables are accessible to all methods in 
        # object, and each object has it's own copy of them.
        @name = name    
        @artist = artist
        @duration = duration
        @plays = 0 # Keep track of how many times that particular song has been played.
    end

    def to_s
        "(#@name, #@artist, #@duration)" # interpolate the value of instance variables to string
    end

    def play
        @plays += 1
        @@plays += 1
        "This song: #@plays plays. Total #@@plays play."
    end
end

# Defines a new class which inherits from the Song class since we define it as a subclass of Song
# This class inherits methods from it's parent class
class Karaokesong < Song 
    def initialize(name, artist, duration, lyrics)
        super(name, artist, duration) # => collect instance variables from the superclass
        @lyrics = lyrics
    end

     # super w/o args => asking parent to invoke a method of same name as the method invoking super. Passes parameters along.
    def to_s
        super + " [#@lyrics]" 
    end
end


s1 = Song.new("Song1", "Artist1", 100)
s2 = Song.new("Song2", "Artist2", 200)
puts s1.play
puts s2.play

# song = Karaokesong.new("My Way", "Sinatra", 225, "And now the...")
# puts song.to_s # Call to inherited method but does not print lyrics since @lyrics is only defined in the subclass.
# puts song.name # Using accessor methods
# puts song.duration

# song.duration = 10 # Using the setter method to change instance variable <duration> to value of 10.
# puts song.duration
