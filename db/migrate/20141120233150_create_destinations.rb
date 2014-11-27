class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :city
      t.integer :zipcode, minimum: 5

      t.timestamps
    end
  end
end
