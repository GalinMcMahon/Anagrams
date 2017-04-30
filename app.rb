require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @word1 = params.fetch('input1').downcase()
  @word2 = params.fetch('input2').downcase()
  if @word2 == ""
    @result_palindrome = @word1.palindromes()
    @result_vowel = @word1.vowel_check("a")
    erb(:result_pal)
  else
    @result = @word1.anagrams(@word2)
    @result_anti = @word1.antigrams(@word2)
    @result_vowel = @word1.vowel_check(@word2)
    erb(:result)
  end
end
