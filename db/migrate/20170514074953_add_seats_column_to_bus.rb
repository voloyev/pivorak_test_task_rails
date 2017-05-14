class AddSeatsColumnToBus < ActiveRecord::Migration[5.0]
  def change
    add_column :buses, :seats, :integer
  end
end
