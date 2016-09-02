def substrings(string, dictionary)
    strings = string.split(" ")
    dict = Hash[dictionary.map {|word| [word,0]}]
    
    return dict.select{|k,v| v > 0}
end

test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", test_dictionary)