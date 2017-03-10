require 'spec_helper'

feature 'As a user' do
  scenario 'you can filter by tag name' do
    visit('/')
    click_button('Create New Link')
    fill_in ("title"), with: "Sky News"
    fill_in ("url"), with: "www.skynews.co.uk"
    fill_in ("tags"), with: "news"
    click_button('Submit')
    visit('/bookmarks')
    fill_in ("tag"), with: "news"
    click_button('Submit')
    expect(page).to have_content("www.skynews.co.uk")
  end
end
