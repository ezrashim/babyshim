class CommentsController < ApplicationController

  def index
      @comments = Comment.all
      @image = "http://i.imgur.com/XtHclMx.gif?1"
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
      flash[:notice] = ["Thanks! Your message will be sent"]
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
      flash[:notice] = ["Your message has been updated"]
      redirect_to comments_path
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

    flash[:notice] = ["Your message has been deleted"]
    redirect_to comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:first_name, :last_name, :email, :comment)
  end

end
