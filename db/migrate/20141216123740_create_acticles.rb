class CreateActicles < ActiveRecord::Migration
  def change
    create_table :acticles do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
