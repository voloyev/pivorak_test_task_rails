class AddUserIdToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :user_id, :integer
  end
end
