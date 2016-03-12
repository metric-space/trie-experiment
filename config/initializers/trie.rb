require 'algorithms'

dictionary_file = "dictionary.txt"
::Dictionary = Containers::Trie.new

file = File.new(dictionary_file, "r")
while (line = file.gets)
  Dictionary.push(line,"1")
end
file.close

