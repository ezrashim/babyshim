class CommentsController < ApplicationController

  def index
      @comments = Comment.all
      @image = "http://i.imgur.com/XtHclMx.gif?1"
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Your message has been posted!"
      redirect_to comments_path
    else
      flash[:notice] = "Could you fill in all the fields please?"
      render "new"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:first_name, :last_name, :email, :comment)
  end

end
