class AddAttachmentImageToArticles < ActiveRecord::Migration
  def self.up
    change_table :acticles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :acticles, :image
  end
end
