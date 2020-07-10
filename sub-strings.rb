puts "Enter a word or phrase:" #Take word or phrase (string) from user and store it in a variable
user_words = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] #Dictionary of substrings

def substrings(str, dict) #Method for tallying how many times each substring appears from our dictionary
    i = 0
    r = 0
    string_array = str.downcase.split(/ /)
    tally_string = []

    string_array.each do |word|
        while i < dict.length
            if word.include?dict[i]
                tally_string << dict[i]
                i += 1
            else 
                i += 1
            end
        end
        i = 0
    end
    pp tally_string.tally
end

substrings(user_words, dictionary)