dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(str,dictionary)
    # Implement a hash

    my_hash = Hash.new(0)
    downcase_str = str.downcase
    # Iterate through the dictionary
    dictionary.each do |word|
        # A way to count how many times a word appears in our string
        # Create a key of the word and count as its value
        count = downcase_str.scan(word).length
        my_hash[word] += count if count > 0
    end
    my_hash
end



puts substrings("On the low",dictionary)
puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
