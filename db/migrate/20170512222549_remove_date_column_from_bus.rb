class RemoveDateColumnFromBus < ActiveRecord::Migration[5.0]
  def change
    remove_column :buses, :date_from
    remove_column :buses, :date_to
  end
end
