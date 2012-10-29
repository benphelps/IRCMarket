class AddCostToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :cost, :integer, :default => 0
    add_column :transactions, :value, :integer, :default => 0
  end

  def self.down
    remove_column :transactions, :cost
    remove_column :transactions, :value
  end
end
