class CreateBusStops < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_stops do |t|
      t.string :stop_name
      t.datetime :time
      t.belongs_to :bus, index: true

      t.timestamps
    end
  end
end
