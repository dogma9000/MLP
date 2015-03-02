class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.acticle.nil?
    	redirect_to general_article_path(:id => @comment.comment.acticle.id)
    else
    	redirect_to general_article_path(:id => @comment.acticle.id)
    end
  end
 
  private
    def comment_params
      params.require(:comment).permit(:user_id, :content, :acticle_id)
    end
    
end
