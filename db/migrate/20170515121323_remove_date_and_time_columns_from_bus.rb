class RemoveDateAndTimeColumnsFromBus < ActiveRecord::Migration[5.0]
  def change
    remove_column :buses, :date_and_time_from, :datetime
    remove_column :buses, :date_and_time_to, :datetime
  end
end
