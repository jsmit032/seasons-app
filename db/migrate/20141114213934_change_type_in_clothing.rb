class ChangeTypeInClothing < ActiveRecord::Migration
  def up
  	remove_column :clothings, :type
  end

  def down
  	add_column :clothings, :clothing_type, :string
  end
end
