class String
  define_method(:antigrams) do |word2|
    array1 = []
    array2 = []
    array_intersection = []
    array1 = (self).split(//)
    array2 = (word2).split(//)
    array_intersection = array1 & array2
    array_intersection
    if array_intersection == []
      anti_output = "But they are antigrams (no shared letters)"
    else
      false
    end
      anti_output
  end

  define_method(:whitespace) do |word2|
    word1 = self.gsub(/\s+/, "")
    if word2 != ""
      word2 = word2.gsub(/\s+/, "")
    else
    end
  end

  define_method(:vowel_check) do |word2|
    includes = self.downcase.count 'aeiou'
    includes2 = word2.downcase.count 'aeiou'
    if includes >=1 && includes2 >=1
      vowel_output = ""
    else
      vowel_output = "You need to use words with vowels."
    end
      vowel_output
  end

  define_method(:anagrams) do |word2|
    word1 = self.downcase.chars.sort
    word2 = word2.downcase.chars.sort
    if word1 == word2
      returned_output = " are anagrams!"
    else word1 != word2
      returned_output = " aren't anagrams."
    end
      returned_output
  end

  define_method(:palindromes) do
    pal_word1 = self
    pal_word_reversed = self.reverse()
    if pal_word1 == pal_word_reversed
      palindrome_output = "is a palindrome"
    else
      palindrome_output = "is not a palindrome"
    end
    palindrome_output
  end
end # ends class string
