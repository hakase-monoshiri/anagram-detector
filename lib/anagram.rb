# Your code goes here!
class Anagram
    attr_accessor :word
    
    def initialize(new_word)
        @word = new_word
    end

    def split_and_sort(string)
        split_array = string.split("")
        sorted_split_array = split_array.sort
        sorted_split_array
    end


        
    def match(test_array)
        matched_words = []
        letters = split_and_sort(@word)
        test_array.each do |test_word|
            test_letters = split_and_sort(test_word)
            if letters == test_letters
                matched_words << test_word
            end
        end
        matched_words
    end
end




