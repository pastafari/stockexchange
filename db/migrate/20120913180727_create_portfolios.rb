class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.references :user
      t.references :stock
      t.integer :amount

      t.timestamps
    end
  end
end
