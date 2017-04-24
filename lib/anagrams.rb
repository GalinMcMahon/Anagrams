class String
  define_method(:antigrams) do |word2|
    array1 = []
    array2 = []
    array1.push(self.split(""))
    array2.push(word2.split(""))
    third_array = array1 & array2
      third_array
  end
end

class String
  define_method(:vowel_check) do
    includes = self.downcase.count 'aeiou'
      if includes >=1
        vowel_output = "Good job"
      else
        vowel_output = "You need to use real words."
      end
      vowel_output
  end

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

  define_method(:palindromes) do
    pal_word1 = self
    pal_word_reversed = self.reverse()
    if pal_word1 == pal_word_reversed
      palindrome_output = "Your word is a palindrome"
    else
      palindrome_output = "Your word is not a palindrome"
    end # ends if statement
    palindrome_output

  end # ends palindromes method
end # ends class string
