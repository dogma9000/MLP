class GeneralController < ApplicationController
  before_filter :banner_setter
  def index
    @articles=Acticle.all
    @static_article=StaticArticle.find_by_permalink "disclamer"
  end
  def article
    @comment=Comment.new
    @article=Acticle.find params[:id]
  end
  def deny_access
  end
  def upload
  	@file=UploadedFile.new
  end
  def create_uploaded
  	@file=UploadedFile.new(uploaded_file_params)
  	@file.save
  	redirect_to root_url
  end
  private
  def uploaded_file_params
  	params.require(:uploaded_file).permit(:file, :description, :user_id)
  end

end
