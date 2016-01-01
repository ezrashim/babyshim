class CommentsController < ApplicationController

  def index
      @comments = Comment.all
      due_date = Date.new(2016,5,24)
      today = Date.today
      @days_left = (due_date - today).to_i
      @image = "http://i.imgur.com/XtHclMx.gif?1"
  end

end
