class AddDestinationIdToWeathers < ActiveRecord::Migration
  def change
    add_reference :weathers, :destinationID, index: true
  end
end
