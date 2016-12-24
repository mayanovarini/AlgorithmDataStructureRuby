#Anagram in Ruby

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']


result = {}

words.each do |word|
  key = word.split('').sort.join #sort each word alphabetically and insert it into the key variable, making every single anagram reads the same
  if result.has_key?(key)
    result[key].push(word) #word variable is the unsorted word, meaning the hash will take the word as is under the sorted word as its key
  else
    result[key] = [word] #if the key is not available -yet-, then create it with the new word
  end
end

result.each do |k, v|
  puts "------"
  p v
end

__END__

["demo", "dome", "mode"]
------
["none", "neon"]
------
["tied", "diet", "edit", "tide"]
------
["evil", "live", "veil", "vile"]
------
["fowl", "wolf", "flow"]
