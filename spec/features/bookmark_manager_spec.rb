require "capybara/rspec"
require_relative "../../app/app"

Capybara.app = BookmarkManager

feature 'Getting bookmarks' do 
  scenario 'visiting the homepage' do 
    visit('/')

    expect(page).to have_content("Welcome to Bookmark Manager")
  end 


  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      visit('/bookmarks')
  
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://google.com"
    end
  end


end 