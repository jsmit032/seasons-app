class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.references :destination, index: true
      t.string :hourly_forecast
    end
    # add_index :weathers, :destination_id
  end
end
