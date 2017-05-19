class AddDateFieldToBus < ActiveRecord::Migration[5.0]
  def change
    add_column :buses, :date_from, :date
    add_column :buses, :date_to, :date
  end
end
