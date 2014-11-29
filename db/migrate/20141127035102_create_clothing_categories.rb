class CreateClothingCategories < ActiveRecord::Migration
  def change
    create_table :clothing_categories do |t|
      t.references :clothing, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
