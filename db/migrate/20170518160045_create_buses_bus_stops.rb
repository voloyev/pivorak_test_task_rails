class CreateBusesBusStops < ActiveRecord::Migration[5.0]
  def change
    create_table :buses_bus_stops, index: false do |t|
      t.integer :bus_id
      t.integer :bus_stop_id
    end
  end
end
