class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.references :clothingID, index: true
      t.references :weatherID, index: true
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :weather_type

      t.timestamps
    end
  end
end
