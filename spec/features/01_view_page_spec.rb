require 'rails_helper'


feature 'view page' do
  scenario 'view page with all comments' do
    @comments = create_list(:comment, 15)
    first_comment = @comments.first
    first_name_1 = first_comment.first_name
    last_name_1 = first_comment.last_name
    full_name_1 = "#{first_name_1} #{last_name_1}"
    comment_1 = first_comment.comment

    last_comment = @comments.last
    first_name_2 = last_comment.first_name
    last_name_2 = last_comment.last_name
    full_name_2 = "#{first_name_2} #{last_name_2}"
    comment_2 = last_comment.comment

    visit '/'
    expect(page).to have_content(full_name_1)
    expect(page).to have_content(full_name_2)
    expect(page).to have_content(comment_1)
    expect(page).to have_content(comment_2)
  end

  scenario 'view page with an image' do
    url = "http://i.imgur.com/XtHclMx.gif?1"

    visit '/'
    expect(page).to have_css("#baby-pic")
  end
end
