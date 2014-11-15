class RemoveReferencesClothingIdAndDestinationId < ActiveRecord::Migration
  def up
  	remove_reference :weathers, :clothingID, index: true
  	remove_reference :weathers, :destinationID, index: true
  end

  def down
  	add_reference :weathers, :clothingID, index: true
  	add_reference :weathers, :destinationID, index: true
  end
end
