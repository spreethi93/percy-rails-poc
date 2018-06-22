require 'spec_helper'

describe 'a feature', type: :feature, js: true do
  it 'shows the dropdown menu when clicked' do
  	debugger
    visit '/'
    first('.dropdown-toggle').click
    expect(page).to have_selector('#main-dropdown', visible: true)

    Percy::Capybara.snapshot(page, name: 'homepage with dropdown')
  end
end