class AddReferencesClothingAndDestination < ActiveRecord::Migration
  def up
  	add_reference :weathers, :clothing, index: true
  	add_reference :weathers, :destination, index: true
  end

  def down
  	down_reference :weathers, :clothingID, index: true
  	down_reference :weathers, :destinationID, index: true
  end
end
