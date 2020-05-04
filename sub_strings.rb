def substrings(word, dict)
  lower = word.downcase
  final = Hash.new(0)
  dict.each {|x|
    matches = lower.scan(x)
    if matches.length > 0
      final[x] += matches.length
    end
  }
  final
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
str = "Howdy partner, sit down! How's it going?"

puts substrings(str,dictionary)
