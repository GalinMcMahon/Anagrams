require('rspec')
require('./lib/anagrams')

describe('String#anagrams') do
  it("returns true or false based on whether the words are anagrams or not") do
    expect("stop".anagrams("spot")).to(eq("These words are anagrams!"))
  end
end
