def substrings(wordString, subStrings)
  output = Hash.new()
  wordArray = wordString.split(/\W/).reject!{|w| w.empty?}
  subStrings.each do |word|
    count = 0
    wordArray.each do |sub|
      if word.downcase == sub.downcase
        count += 1
        if count == 1
          output.merge!(word.to_sym => count)
        else
          output[word.to_sym] = count
        end
      end
    end
  end  
  output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]  
puts substrings("It's time to go and see it, but HOW! and how will it go down below?",dictionary)