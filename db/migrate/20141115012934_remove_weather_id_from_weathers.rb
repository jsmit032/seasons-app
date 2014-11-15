class RemoveWeatherIdFromWeathers < ActiveRecord::Migration
  def up
    remove_reference :weathers, :weatherID, index: true
  end

  def down
  	add_reference :weathers, :weatherID, index: true
  end
  
end
