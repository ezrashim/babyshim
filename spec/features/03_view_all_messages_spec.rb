require 'rails_helper'

feature 'view all messages' do

  scenario 'view all messages' do
    comments = create_list(:comment, 10)
    visit '/comments'

    expect(page).to have_content('Thank you')
    expect(page).to have_content(comments.last.first_name)
    expect(page).to have_content(comments.last.last_name)
    expect(page).to have_content(comments.last.comment)
    expect(page).to have_content(comments.first.first_name)
    expect(page).to have_content(comments.first.last_name)
    expect(page).to have_content(comments.first.comment)
  end
end
