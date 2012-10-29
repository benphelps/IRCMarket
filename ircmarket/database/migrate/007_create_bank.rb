class CreateBank < ActiveRecord::Migration
  def self.up
    create_table :bank do |t|
      t.column :trades, :integer
      t.column :in, :integer
      t.column :out, :integer
      t.column :profit, :integer
    end
  end

  def self.down
    drop_table :bank
  end
end
