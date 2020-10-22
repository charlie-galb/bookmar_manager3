feature 'viewing a list of bookmarks' do
  scenario 'checks that the web response is successful' do
    visit("/bookmarks")
    expect(page.status_code).to eq(200)
  end

  scenario 'shows list of bookmarks on page' do
    Bookmarks.create(url: "http://www.makersacademy.com", title: "Makers")
    Bookmarks.create(url: "http://www.google.com", title: "Google")
    Bookmarks.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
    visit('/bookmarks')
    expect(page).to have_content("Makers")
    expect(page).to have_content("Google")
    expect(page).to have_content("Destroy All Software")
  end

  scenario 'clicking title takes user to the appropriate page' do
    Bookmarks.create(url: "http://www.makersacademy.com", title: "Makers")
    visit('/bookmarks')
    expect(page).to have_link("Makers", :href=>"http://www.makersacademy.com")
  end

end
