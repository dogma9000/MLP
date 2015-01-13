class CreateUploadedFiles < ActiveRecord::Migration
  def change
    create_table :uploaded_files do |t|
      t.references :type, index: true
      t.references :user, index: true
      t.boolean :is_public, :default => false
      t.boolean :is_checked, :default => false
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
