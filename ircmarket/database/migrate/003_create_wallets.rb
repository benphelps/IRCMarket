class CreateWallets < ActiveRecord::Migration
  def self.up
    create_table :wallets do |t|
      t.column :amount, :integer
      t.column :buyer_id, :integer
    end
  end

  def self.down
    drop_table :wallets
  end
end
