require 'spec_helper'

RSpec.feature 'it will display the links' do
  scenario 'so the user can see what has been added' do
    visit('/')
    click_button('Create New Link')
    fill_in ("title"), with: "Google"
    fill_in ("url"), with: "www.google.co.uk"
    click_button('Submit')
    expect(page).to have_content ('www.google.co.uk')
  end
end
