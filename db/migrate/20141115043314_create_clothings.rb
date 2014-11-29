class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :clothing_type
    end
  end
end
