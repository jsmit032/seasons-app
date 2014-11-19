class CreateWeatherToClothings < ActiveRecord::Migration
  def change
    create_table :weather_to_clothings do |t|
    	t.integer :clothing_id
    	t.integer :weather_id
    	t.timestamps
    end
    add_index :weather_to_clothings, :clothing_id
    add_index :weather_to_clothings, :weather_id
  end
end
