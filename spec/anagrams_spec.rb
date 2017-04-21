require('rspec')
require('./lib/anagrams')

describe('String#anagrams') do
  it("returns true or false based on whether the words are anagrams or not") do
    expect("stop".anagrams("spot")).to(eq("These words are anagrams!"))
  end
end

  describe('String#palindromes') do
  it("returns a true or false statement based on whether the input word is a palindrome") do
    expect(("radar").palindromes()).to(eq("Your word is a palindrome"))
  end
end
