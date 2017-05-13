class AddDateAndTimeFieldToBus < ActiveRecord::Migration[5.0]
  def change
    add_column :buses, :date_and_time_from, :datetime
    add_column :buses, :date_and_time_to, :datetime
  end
end
