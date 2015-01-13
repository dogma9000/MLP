class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :uid
      t.string :provider
      t.string :pic_url

      t.timestamps
    end
  end
end
