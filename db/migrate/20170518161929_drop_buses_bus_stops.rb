class DropBusesBusStops < ActiveRecord::Migration[5.0]
  def change
    drop_table :buses_bus_stops
  end
end
