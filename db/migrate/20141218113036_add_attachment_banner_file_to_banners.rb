class AddAttachmentBannerFileToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :banner_file
    end
  end

  def self.down
    remove_attachment :banners, :banner_file
  end
end
