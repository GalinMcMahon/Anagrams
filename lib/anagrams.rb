class String
  define_method(:anagrams) do |word2|
    word1 = self.downcase.chars.sort.join
    word2 = word2.downcase.chars.sort.join
  if word1 == word2
    returned_output = "These words are anagrams!"
  else
    returned_output = "These aren't anagrams."
  end
  returned_output
end
end



class String
  define_method(:palindromes) do
    pal_word1 = self
    pal_word_reversed = self.reverse()
  if pal_word1 == pal_word_reversed
    palindrome_output = "Your word is a palindrome"
  else
    palindrome_output = "Your word is not a palindrome"
  end
  palindrome_output
  end
end
