def substrings(string, dictionary)
    strings = string.split(" ")
    dict = Hash[dictionary.map {|word| [word,0]}]
    strings.each do |word|
        dict[word] += 1
        word.split(//).each_with_index do |character,i|
            if dict.key?(word[(i + 1)..-1])
                dict[word[(i + 1)..-1]] +=1
            end
            if dict.key?(word[0..(-2-i)])
                dict[word[0..(-2-i)]] +=1
            end
        end
    end

    return dict.select{|k,v| v > 0}
end

test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", test_dictionary)