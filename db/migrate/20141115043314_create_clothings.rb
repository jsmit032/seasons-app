class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :clothing_type
      t.references :category, index: true
    end
  end
end
