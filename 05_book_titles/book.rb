
# write your code here
class Book

    def initialize
        @title = ""
    end

    attr_reader :title
   
    def title=(str)
        last_str = ""
        collector = Array.new
        arr = str.split(" ")
            arr.each do |word|
                case word
                when 'the'
                    collector << word
                when 'a'
                    collector << word
                when 'in'
                    collector << word
                when 'an'
                    collector << word
                when 'and'
                    collector << word
                when 'of'
                    collector << word
                else
                    collector << word.capitalize
                end
                
            end     
                    @title = collector.join(" ")
    end
end

book = Book.new


##my_book = Book.new("what i wish i knew when i was 20")

##print my_book.title