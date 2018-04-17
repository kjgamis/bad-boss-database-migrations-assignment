class Restore < ActiveRecord::Migration[5.0]
  def up
    change_table :locations do |t|
      t.string :country, :capital
      t.delete :city, :weather
    end
    drop_table :widgets
  end

  def down
    change_table :locations do |t|
      t.string :city, :weather
      t.delete :country, :capital
    end
  end
end
