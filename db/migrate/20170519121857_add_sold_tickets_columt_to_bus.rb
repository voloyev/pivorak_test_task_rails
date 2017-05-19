class AddSoldTicketsColumtToBus < ActiveRecord::Migration[5.0]
  def change
    add_column :buses, :sold_tickets, :integer
  end
end
