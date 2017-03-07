require 'spec_helper'

RSpec.feature 'it will display the links' do
  scenario 'so the user can see what has been added' do
    visit "/"
    # Link.create(:id => 6, :title => 'eBay', :url => 'http//www.ebay.co.uk')
    expect(page).to have_content ('http://www.google.co.uk')
  end
end
