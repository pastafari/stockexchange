class CreateStocks < ActiveRecord::Migration
  def up
    create_table :stocks do |t|
      t.string :name
      t.string :scrip

      t.timestamps
    end
  end

  def down
  end
end
