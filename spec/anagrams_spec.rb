require('rspec')
require('./lib/coins')

describe('String#word') do
  it("returns true or false based on whether the words are anagrams or not") do
    expect((stop, tops).words()).to(eq(true))
  end
