class CommentsController < ApplicationController
  
  def index
    @comments = Comment.all
  end
  
  def new
  end

  def show
     @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user ||= current_user
    #
    #if current_user.blank?
    #  @comment.author = "Anonim"
    #else
    #@comment.author = current_user.username
    #end
    #
    @comment.save
    redirect_to @comment
  end

  def destroy
  end

  def edit
  end
  
  private
  def comment_params
    params.require(:comment).permit(:title, :text)
  end
end
