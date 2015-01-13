class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title
      t.string :url
      t.date :start
      t.date :expires
      t.integer :height
      t.integer :banner_group

      t.timestamps
    end
  end
end
