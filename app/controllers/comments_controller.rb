class CommentsController < ApplicationController
  
  def index
  end
  
  def new
  end

  def show
  end

  def create
    @comment = Comments.new(params[:comment])
 
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
