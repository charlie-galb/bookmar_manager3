
feature 'Add a new bookmark' do
  scenario 'visiting the homepage' do
    visit("/bookmarks")
    click_on('Add bookmark')
    fill_in("url", with: "http://www.amazon.com")
    fill_in("title", with: "amazon")
    click_button 'Submit'
    expect(page).to have_content("amazon")
  end
end
