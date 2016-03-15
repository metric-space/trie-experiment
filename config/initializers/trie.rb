require 'rambling-trie'
require 'bk'
require 'YAML'

::Dictionary = YAML.load(File.read('trie.yaml'))
::Correct = YAML.load(File.read('bk.yaml'))


