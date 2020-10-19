require "capybara/rspec"
require_relative "../../app/app"

Capybara.app = BookmarkManager

feature 'Viewing bookmark' do 
  scenario 'visiting the homepage' do 
    visit('/')
    expect(page).to have_content("Welcome to Bookmark Manager")
  end 

  scenario 'viewing the selected bookmarks' do 
    visit('/bookmarks')

    expect(page).to have_content("Here are the bookmarks:")
  
  end 

end 