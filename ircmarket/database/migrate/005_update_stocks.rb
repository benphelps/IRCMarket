class UpdateStocks < ActiveRecord::Migration
  def self.up
    add_column :stocks, :type, :string, :default => 'long'
  end

  def self.down
    remove_column :stocks, :type
  end
end
