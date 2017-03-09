# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to my bookmark manager
feature 'As a user' do
  scenario 'you can submit a new link' do
    visit('/')
    click_button('Create New Link')
    fill_in ("title"), with: "BBC"
    fill_in ("url"), with: "www.bbc.co.uk"
    click_button('Submit')
    expect(page).to have_content("BBC")
    expect(page).to have_content("www.bbc.co.uk")
  end
end
