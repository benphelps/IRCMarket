class CreateStocks < ActiveRecord::Migration
  def self.up
    create_table :stocks do |t|
      t.column :name, :string
      t.column :price, :integer 
      t.column :amount, :integer
      t.column :buyer_id, :integer
    end
  end

  def self.down
    drop_table :stocks
  end
end
