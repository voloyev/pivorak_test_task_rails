class CreateBuses < ActiveRecord::Migration[5.0]
  def change
    create_table :buses do |t|
      t.string :name
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
