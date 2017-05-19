class CreateBusStopsBuses < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_stops_buses do |t|
      t.integer :bus_id
      t.integer :bus_stop_id
    end
  end
end
