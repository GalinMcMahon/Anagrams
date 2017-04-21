# require('capybara/rspec') #Installs integration testing
# require('./app')
# require('pry')
# Capybara.app = Sinatra::Application # Allow integration testing to process
# set(:show_exceptions, false)
#
#  #Integration test below.  This simulates user input for rspec testing
# describe('anagrams', {:type => :feature}) do
#   it('takes user input and determines whether or not it is an anagram') do
#     visit('/')
#      # Title below is the form name
#     fill_in('input', :with => 'stop', 'tops')
#     click_button('Send')
#     expect(page).to have_content('true')
#   end
# end
