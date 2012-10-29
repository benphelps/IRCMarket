class AddMarginToWallets < ActiveRecord::Migration
  def self.up
    add_column :wallets, :margin, :integer, :default => 0
  end

  def self.down
    remove_column :wallets, :margin
  end
end
