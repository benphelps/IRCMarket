class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.column :trade, :string
      t.column :symbol, :string
      t.column :amount, :integer
      t.column :wallet, :integer
      t.column :margin, :integer
      t.column :buyer_id, :integer
    end
  end

  def self.down
    drop_table :transactions
  end
end
