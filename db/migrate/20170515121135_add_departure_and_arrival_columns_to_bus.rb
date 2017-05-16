class AddDepartureAndArrivalColumnsToBus < ActiveRecord::Migration[5.0]
  def change
    add_column :buses, :departure, :datetime
    add_column :buses, :arrival, :datetime
  end
end
