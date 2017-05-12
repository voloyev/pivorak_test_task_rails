class AddTimeFieldToBus < ActiveRecord::Migration[5.0]
  def change
    add_column :buses, :time_from, :time
    add_column :buses, :time_to, :time
  end
end
