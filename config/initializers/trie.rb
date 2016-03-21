require 'rambling-trie'
require 'bk'
require 'parallel'

::Correct = {}
::Dictionary = Rambling::Trie.create


#--- the importing of the file and getting the file into an array of words structure--

dictionary_file = "dictionary.txt"

file = File.open(dictionary_file,'r')

array_of_words = []

while (line = file.gets)
  line = line.split("\n")[0]
  array_of_words << line
end

# ------------------- End of Terribly Unimportant Stuff ------------------------------

mapped_array_of_words = array_of_words.group_by {|word| word[0] }


### the following is the result of an experiment done (put link here)

array_of_words.map do |x| 
 Dictionary << x
end

Parallel.map(mapped_array_of_words.keys) do |i|
  Correct[i] = BK::Tree.new 
  mapped_array_of_words[i].map {|x| Correct[i].add  x}
end 



