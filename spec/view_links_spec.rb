require 'spec_helper'

RSpec.feature 'it will display the links' do
  scenario 'so the user can see what has been added' do
    visit "/"
    # Link.create(:name => 'Google', :link => 'http//www.google.co.uk')
    expect(page).to have_content ('http//www.google.co.uk')
  end
end
