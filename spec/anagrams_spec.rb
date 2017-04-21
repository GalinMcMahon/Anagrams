require('rspec')
require('./lib/anagrams')


describe('String#anagrams') do
  it("returns true or false based on whether the words are anagrams or not") do
    expect("stop".anagrams("spot")).to(eq("These words are anagrams!"))
  end

  it("allows mixed case words to still work") do
    expect("sTOp".anagrams("tops")).to(eq("These words are anagrams!"))
  end
end

describe('String#vowel_check') do
  it("checks words to make sure a vowel exists") do
    expect("stop".vowel_check?("tops")).to(eq("Good job"))

  end
end

describe('String#palindromes') do
  it("returns a true or false statement based on whether the input word is a palindrome") do
    expect(("radar").palindromes()).to(eq("Your word is a palindrome"))
  end
end
