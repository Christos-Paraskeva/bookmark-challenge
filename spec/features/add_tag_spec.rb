require 'spec_helper'

feature 'As a user' do
  scenario 'you can add a tag when creating new link' do
    visit('/')
    click_button('Create New Link')
    fill_in ("title"), with: "Sky"
    fill_in ("url"), with: "www.skyspos.co.uk"
    fill_in ("tags"), with: "sport"
    click_button('Submit')
    expect(page).to have_content("sport")
  end
end
