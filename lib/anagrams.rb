class String
  define_method(:anagrams) do |word2|
    word1 = self.chars.sort.join
    word2 = word2.chars.sort.join
  if word1 == word2
    returned_output = "These words are anagrams!"
  else
    returned_output = "These aren't anagrams."
  end
  final_output
  end
end
