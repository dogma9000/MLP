class AddPermalinkToType < ActiveRecord::Migration
  def change
    add_column :types, :permalink, :string
  end
end
