require 'rails_helper'

feature 'view form page' do
  scenario 'view blank form' do
    visit '/'
    click_link('Leave a Message!')

    expect(page).to have_content('First Name')
    expect(page).to have_content('Last Name')
    expect(page).to have_content('Email')
    expect(page).to have_content('Message')
  end
end
