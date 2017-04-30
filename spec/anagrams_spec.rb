require('rspec')
require('./lib/anagrams')

describe('String')

  describe('#anagrams') do
    it("returns true or false based on whether the words are anagrams or not") do
      expect("stop".anagrams("spot")).to(eq("These words are anagrams!"))
    end

    it("allows mixed case words to still work") do
      expect("sTOp".anagrams("tops")).to(eq("These words are anagrams!"))
    end


  describe('#vowel_check') do
    it("checks words to make sure a vowel exists") do
      expect("stp".vowel_check("jk")).to(eq("You need to use words with vowels."))
    end
  end

  describe('#palindromes') do
    it("returns a true or false statement based on whether the input word is a palindrome") do
      expect(("radar").palindromes()).to(eq("is a palindrome"))
    end
  end

  describe('#antigrams') do
    it("returns a true or false statement based on whether the input words are antigrams") do
      expect("stop".antigrams("jake")).to(eq("These words are antigrams (no shared letters)"))
    end
  end

  describe('#whitespace') do
    it("removes white space before checking any of the above methods") do
      expect(" hello there ".whitespace(" hello there ")).to(eq("hellothere"))
    end
  end


end
