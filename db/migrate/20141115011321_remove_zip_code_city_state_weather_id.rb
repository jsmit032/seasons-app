class RemoveZipCodeCityStateWeatherId < ActiveRecord::Migration
  def up
  	remove_column :weathers, :weatherID, :references
  	remove_column :weathers, :zip_code, :string
  	remove_column :weathers, :city, :string
  	remove_column :weathers, :state, :string
  end

  def down
  	add_column :weathers, :weatherID, :references
  	add_column :weathers, :zip_code, :string
  	add_column :weathers, :city, :string
  	add_column :weathers, :state, :string
  end

end
