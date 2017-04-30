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
  @result = @word1.anagrams(@word2)
  erb(:result)
end
