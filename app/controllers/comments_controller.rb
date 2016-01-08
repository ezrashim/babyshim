class CommentsController < ApplicationController

  def view
    @image = "http://i.imgur.com/XtHclMx.gif?1"
  end

  def index
    @comments = Comment.all.reverse
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comment_path(@comment[:id])
    else
      flash.now[:notice] = @comment.errors.full_messages
      render "edit"
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    if @comment.save
      redirect_to comment_path(@comment)
    else
      flash.now[:notice] = @comment.errors.full_messages
      render "new"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    flash[:notice] = ["No worries. We deleted your message :)"]
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:first_name, :last_name, :email, :comment)
  end

end
