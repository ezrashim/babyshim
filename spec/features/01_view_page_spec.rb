require 'rails_helper'


feature 'view landing page' do
  scenario 'view page with all comments' do
    url = "http://i.imgur.com/XtHclMx.gif?1"

    visit '/'
    expect(page).to have_content('Jean and Ezra are proud to announce')
    expect(page).to have_content('until baby Shim arrives!')
    expect(page).to have_css("#baby-pic")
    end
end
