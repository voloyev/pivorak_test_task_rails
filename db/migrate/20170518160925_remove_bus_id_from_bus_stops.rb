class RemoveBusIdFromBusStops < ActiveRecord::Migration[5.0]
  def change
    remove_column :bus_stops, :bus_id
  end
end
