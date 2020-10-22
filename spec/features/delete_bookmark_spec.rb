feature 'Delete a bookmark' do
  scenario 'visiting the homepage' do
    visit("/bookmarks/add")
    fill_in("url", with: "http://www.amazon.com")
    fill_in("title", with: "amazon")
    click_button 'Submit'
    click_on("Delete bookmark")
    check('amazon')
    click_button 'Submit'
    expect(page).not_to have_content("amazon")
  end
end
