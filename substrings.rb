def substrings(string, dictionary)
    strings = string.downcase.scan(/\w+/)
    dict = Hash[dictionary.map {|word| [word,0]}]
    strings.each do |word|
        dictionary.each do |term|
            dict[term] += word.scan(/(?=#{term})/).count
        end
    end

    return dict.select{|k,v| v > 0}
end

test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", test_dictionary)
substrings("Howdy partner, sit down! How's it going?", test_dictionary)