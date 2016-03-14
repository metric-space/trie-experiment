require 'rambling-trie'
require 'bk'

dictionary_file = "dictionary.txt"
::Dictionary = Rambling::Trie.create
::Correct = BK::Tree.new 

file = File.new(dictionary_file, "r")
while (line = file.gets)
  line = line.split("\n")[0]
  Dictionary << line
  Correct.add(line)
end
file.close

