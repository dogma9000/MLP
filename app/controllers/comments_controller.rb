class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    #redirect_to general_article_path(:id => @comment.acticle.id)
    respond_to do |format|
    	if @comm
    	if @comment.has_parent?
    		format.js {render :action => "create_child"}
    	else
    		format.js
    	end
    end
  end
 
  private
    def comment_params
      params.require(:comment).permit(:user_id, :content, :acticle_id, :parent_id)
    end
    
end
