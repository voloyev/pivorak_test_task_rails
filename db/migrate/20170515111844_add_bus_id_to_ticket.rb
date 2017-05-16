class AddBusIdToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :bus_id, :integer
  end
end
