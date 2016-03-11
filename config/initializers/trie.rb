require 'algorithms'

dictionary_file = "/usr/share/dict/words"
::Dictionary = Containers::Trie.new

file = File.new(dictionary_file, "r")
while (line = file.gets)
  Dictionary.push(line,"1")
end
file.close

