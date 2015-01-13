class CreateStaticArticles < ActiveRecord::Migration
  def change
    create_table :static_articles do |t|
      t.string :title
      t.text :content
      t.string :permalink

      t.timestamps
    end
  end
end
