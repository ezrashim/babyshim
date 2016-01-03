class CommentsController < ApplicationController

  def index
      @comments = Comment.all
      @image = "http://i.imgur.com/XtHclMx.gif?1"
  end

end
