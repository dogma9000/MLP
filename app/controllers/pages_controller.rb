class PagesController < ApplicationController
before_filter :banner_setter
  def stories
    @books = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "stories"})
    @static_article=StaticArticle.find_by_permalink "stories"
  end

  def art
    @gallery = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "art"})
    @static_article=StaticArticle.find_by_permalink "art"
  end

  def music
    @songs = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "music"})
    @static_article=StaticArticle.find_by_permalink "music"
  end

  def soft
    @software = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "soft"})
    @static_article=StaticArticle.find_by_permalink "soft"
  end
end
