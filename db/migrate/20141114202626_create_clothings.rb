class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :type
      t.string :weather_type

      t.timestamps
    end
  end
end
