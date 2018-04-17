class ChangeTableLocations < ActiveRecord::Migration[5.0]
  def change
    change_table :locations do |t|
      t.remove :country, :capital
      t.string :city, :weather
    end
  end
end
