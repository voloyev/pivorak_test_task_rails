class AddSeatNumberToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :seat, :integer
  end
end
