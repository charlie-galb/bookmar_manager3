require "capybara/rspec"
require_relative "../../app/app"

Capybara.app = BookmarkManager

feature 'Getting bookmarks' do 
  scenario 'visiting the homepage' do 
    visit('/')

    expect(page).to have_content("Welcome to Bookmark Manager")
  end 

  # scenario 'viewing the selected bookmarks' do 
  #   visit('/')
  #   select 'All', from: 'Bookmarks'
  #   click_button('Submit')
  #   expect(page).to have_content("Here are the Bookmarks:")
  # end 

  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      visit('/bookmarks')
  
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.google.com"
    end
  end


end 