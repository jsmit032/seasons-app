class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :clothing_type
      t.references :weather
      t.string :weather_type
    end
    add_index :clothings, :weather_id
  end
end
