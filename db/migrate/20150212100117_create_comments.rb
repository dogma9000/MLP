class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, :acticle, index: true
      t.text :comment
      t.text :content
      
      # this line adds an integer column called `article_id`.
      t.timestamps null: false
    end
  end
end

