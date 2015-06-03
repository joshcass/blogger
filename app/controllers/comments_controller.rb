class CommentsController < ApplicationController

  def create
    @comment = Comment.create comment_params
    @comment.article_id = params[:article_id]
    if @comment.save
     redirect_to @comment.article
    else
      raise "error"
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
