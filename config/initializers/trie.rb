require 'rambling-trie'
require 'bk'

::Correct = {}
::Dictionary = {}

dictionary_file = "dictionary.txt"

file = File.open(dictionary_file,'r')

huge_array = []

alphabets = ("a".."z").to_a

while (line = file.gets)
  line = line.split("\n")[0]
  huge_array << line
end

arrag = huge_array.group_by {|i| i[0] }

alphabets.map do |i| 
 Dictionary[i] = Rambling::Trie.create
 Correct[i] = BK::Tree.new

 arrag[i].map do |x| 
	 Dictionary[i] << x 
	 Correct[i].add x
 end
end



