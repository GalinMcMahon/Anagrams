require('capybara/rspec') #Installs integration testing
require('./app')
require('pry')
Capybara.app = Sinatra::Application # Allow integration testing to process
set(:show_exceptions, false)


describe('anagrams', {:type => :feature}) do
  it('takes user input and determines whether or not it is an anagram') do
    visit('/')
    fill_in('input1', :with => 'stop')
    fill_in('input2', :with => 'spot')
    click_button('Send')
    expect(page).to have_content('These words are anagrams!')
  end
end
