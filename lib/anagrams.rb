class String


            # THIS COMMENTED OUT SECTION ISNT WORKING
            # AFTER SEVERAL REWRITES
            # WILL RESUBMIT

  # define_method(:vowel_check?) do
  #   vowels = ["a", "e", "i", "o", "u"]
  #   # self.each do |vowel|
  #   included = self.split("")
  #   includes_vowels = included.each_with_index() do |letter,index|
  #     included.include?(vowels)
  #     if includes_vowels === true
  #       vowel_output = "Good job"
  #     else
  #       false
  #       vowel_output = "You need to use real words."
  #     end
  #   end
  #   vowel_output
  #   # end # ends if statement
  # end


  define_method(:anagrams) do |word2|
    word1 = self.downcase.chars.sort.join
    word2 = word2.downcase.chars.sort.join

    if word1 == word2
      returned_output = "These words are anagrams!"
    else
      returned_output = "These aren't anagrams."
    end # ends if statement
    returned_output
  end # ends anagrams method
end # ends string anagrams

class String
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
