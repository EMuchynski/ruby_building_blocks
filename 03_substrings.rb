=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

    > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

    > substrings("below", dictionary)
    => {"below"=>1, "low"=>1}

    Next, make sure your method can handle multiple words:

    > substrings("Howdy partner, sit down! How's it going?", dictionary)
    => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
=end

def substrings(words, dictionary)

  #hash variable to store substrings
  hash = Hash.new(0)

  #case sensitive
  words = words.downcase.split(' ')

  #begin looping through words
  (0..words.length-1).each do |i|
    (0..dictionary.length-1).each do |j|

      #check for substrings
      if words[i] =~ /#{dictionary[j]}/
        hash[dictionary[j]] += 1
      end
    end
  end

  #return hash
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
