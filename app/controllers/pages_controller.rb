class PagesController < ApplicationController
before_filter :banner_setter
  def stories
    @books = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "stories"})
  end

  def art
    @gallery = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "art"})
  end

  def music
    @songs = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "music"})
  end

  def soft
    @software = UploadedFile.joins(:type).where(:is_public => true, :is_checked => true, :types => {:permalink => "soft"})
  end
end
