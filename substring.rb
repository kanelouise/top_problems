
def substrings(string, dictionary)
  string_lower = string.downcase
  dictionary.reduce(Hash.new(0)) do |matches, word|
    if string_lower.include?(word)
      matches[word] = string_lower.scan(/(?=#{word})/).count
    end
    matches
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

