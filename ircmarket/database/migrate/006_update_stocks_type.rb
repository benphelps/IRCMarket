class UpdateStocksType < ActiveRecord::Migration
  def self.up
    rename_column :stocks, :type, :trade
  end

  def self.down
    rename_column :stocks, :type
  end
end
