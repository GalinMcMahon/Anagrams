require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

 # /title is received from the form
get('/result') do
   # @title below is the output which feeds into line 2 of the title.erb
  @word1 = params.fetch('input1').words()
  @word2 = params.fetch('input2').words()
   # :title sends the output TO the title page, aka the GUI output page
  erb(:result)
end
