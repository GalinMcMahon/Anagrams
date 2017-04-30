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
    expect(page).to have_content("These words are anagrams!")
  end
end

describe('antigrams', {:type => :feature}) do
  it('takes user input and determines whether or not it is an antigram') do
    visit('/')
    fill_in('input1', :with => 'stop')
    fill_in('input2', :with => 'jake')
    click_button('Send')
    expect(page).to have_content("These words are antigrams (no shared letters)")
  end
end

describe('vowel_check', {:type => :feature}) do
  it('takes user input and determines whether or not it is a real word based on it having at least one vowel') do
    visit('/')
    fill_in('input1', :with => 'stp')
    fill_in('input2', :with => 'jk')
    click_button('Send')
    expect(page).to have_content("You need to use words with vowels.")
  end
end
