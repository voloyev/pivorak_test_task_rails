class RemoveTimeColumnFromBus < ActiveRecord::Migration[5.0]
  def change
    remove_column :buses, :time_from
    remove_column :buses, :time_to
  end
end
